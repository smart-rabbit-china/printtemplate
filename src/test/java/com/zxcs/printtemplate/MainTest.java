package com.zxcs.printtemplate;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.zxcs.printtemplate.service.IPrinterCustomComponentService;
import com.zxcs.printtemplate.service.IPrinterKitchenService;
import com.zxcs.printtemplate.model.PrinterCustomComponentDO;
import com.zxcs.printtemplate.model.PrinterKitchenDO;
import com.zxcs.printtemplate.model.PrinterSystemComponentDO;
import com.zxcs.printtemplate.vo.PrinterKitchenVO;
import org.apache.commons.lang3.StringUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

/**
 * 测试类
 * Created by zfh on 2018/12/28
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class MainTest {

    private static final Logger logger = LoggerFactory.getLogger(MainTest.class);

    @Autowired
    private IPrinterCustomComponentService scOperationPrinterCustomComponentService;

    @Autowired
    private IPrinterKitchenService scOperationPrinterKitchenService;

    @Test
    public void testConvertToVO () {
        PrinterKitchenDO printerKitchen = scOperationPrinterKitchenService.getByPrimaryKey(1);
        PrinterKitchenVO printerKitchenVO = new PrinterKitchenVO();
        BeanUtils.copyProperties(printerKitchen, printerKitchenVO);
        System.out.println("printerKitchenVO: " + printerKitchenVO);
    }

    @Test
    public void testFileStream () {
        try {
            long startTimeStamp = System.currentTimeMillis();

            StringBuilder stringBuilder = new StringBuilder();
            FileReader fileReader = new FileReader("F:\\bulb\\print-template\\data\\save-custom.json");
            char[] chars = new char[1024];
            int length;
            while ((length = fileReader.read(chars)) != -1) {
                stringBuilder.append(chars, 0, length);
            }

            JSONObject jsonObject = JSONObject.parseObject(stringBuilder.toString());
            System.out.println("documentType: " + jsonObject.getInteger("documentType"));
            System.out.println("name：" + jsonObject.getString("name"));
            System.out.println("baseTemplet: " + jsonObject.getInteger("baseTemplet"));
            System.out.println("url：" + jsonObject.getString("url"));

            Integer documentId = 10;

            JSONArray modules = jsonObject.getJSONArray("modules");
            List<PrinterCustomComponentDO> customComponentList = new ArrayList<>(30);
            for (Object item : modules) {
                JSONArray rows = ((JSONObject) item).getJSONArray("rows");
                for (Object row : rows) {
                    JSONArray components = ((JSONObject) row).getJSONArray("components");
                    JSONObject o = (JSONObject) components.get(0);

                    String componentStr = o.getString("component");
                    if (StringUtils.isBlank(componentStr)) {
                        convertCustomComponent(documentId, JSONObject.toJSONString(components.get(0)), customComponentList);
                        continue;
                    } else {
                        convertCustomComponent(documentId, componentStr, customComponentList);
                    }
                    String tableTitleStr = o.getString("tableTitle");
                    if (StringUtils.isNotBlank(tableTitleStr)) {
                        convertCustomComponent(documentId, tableTitleStr, customComponentList);
                    }
                    String categoryStr = o.getString("category");
                    if (StringUtils.isNotBlank(categoryStr)) {
                        convertCustomComponent(documentId, categoryStr, customComponentList);
                    }
                    String theadStr = o.getString("thead");
                    if (StringUtils.isNotBlank(theadStr)) {
                        JSONObject thead = JSON.parseObject(theadStr);
                        JSONObject tableRowSet = (JSONObject) thead.get("tableRowSet");
                        JSONArray columnSet = tableRowSet.getJSONArray("columnSet");
                        for (Object columnItem : columnSet) {
                            convertCustomComponent(documentId, JSONObject.toJSONString(columnItem), customComponentList);
                        }
                    }
                    String tbodyStr = o.getString("tbody");
                    if (StringUtils.isNotBlank(tbodyStr)) {
                        JSONObject tbody = JSON.parseObject(tbodyStr);
                        JSONArray tableRowSet = tbody.getJSONArray("tableRowSet");
                        for (Object tableRowSetItem : tableRowSet) {
                            JSONArray columnSet = ((JSONObject) tableRowSetItem).getJSONArray("columnSet");
                            for (Object columnSetItem : columnSet) {
                                convertCustomComponent(documentId, JSONObject.toJSONString(columnSetItem), customComponentList);
                            }
                        }
                    }
                }
            }

            System.out.println("size: " + customComponentList.size());
            System.out.println("JSON: " + JSON.toJSON(customComponentList));
            Integer integer = scOperationPrinterCustomComponentService.saveMultiplePrinterCustomComponent(customComponentList);
            System.out.println("受影响的条数： " + integer);
            System.out.println("耗时：" + (System.currentTimeMillis() - startTimeStamp) + "ms");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 转换自定义组件
     * @param documentId   模板id
     * @param componentStr 系统组件
     * @param customComponentList 自定义组件列表
     */
    private void convertCustomComponent (Integer documentId, String componentStr, List<PrinterCustomComponentDO> customComponentList) {
        PrinterSystemComponentDO systemComponent = JSONObject.parseObject(componentStr, PrinterSystemComponentDO.class);
        PrinterCustomComponentDO customComponent = new PrinterCustomComponentDO();
        customComponent.setDocumentTemplateId(documentId);
        customComponent.setSystemComponentId(systemComponent.getId());
        customComponent.setValueStyle(systemComponent.getValueStyle());
        customComponentList.add(customComponent);
    }
}

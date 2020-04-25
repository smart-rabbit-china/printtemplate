package com.zxcs.printtemplate.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.zxcs.printtemplate.constant.SystemComponentTypeEnum;
import com.zxcs.printtemplate.exception.print.PrinterTemplateDocumentException;
import com.zxcs.printtemplate.form.CustomTemplateDocumentForm;
import com.zxcs.printtemplate.form.TemplateDocumentEnableForm;
import com.zxcs.printtemplate.form.UpdateCustomTemplateDocumentForm;
import com.zxcs.printtemplate.helper.MapHelper;
import com.zxcs.printtemplate.model.*;
import com.zxcs.printtemplate.service.*;
import com.zxcs.printtemplate.vo.PrinterDocumentTypeVO;
import com.zxcs.printtemplate.vo.PrinterTemplateDocumentVO;
import com.zxcs.printtemplate.vo.Response;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * 打印机设置-票据样式管理
 * <p>
 * Created by zfh on 2018/12/12
 */
@RequestMapping("printerTicket")
@RestController
public class PrinterTicketController {

    private static final Logger logger = LoggerFactory.getLogger(PrinterTicketController.class);

    @Autowired
    private IPrinterDocumentTypeService printerDocumentTypeService;

    @Autowired
    private IPrinterTemplateModuleService printerTemplateModuleService;

    @Autowired
    private IPrinterTemplateDocumentService printerTemplateDocumentService;

    @Autowired
    private IPrinterSystemComponentService printerSystemComponentService;

    @Autowired
    private IPrinterCustomComponentService printerCustomComponentService;

    /**
     * 查询-票据类型
     */
    @GetMapping("types")
    public Response queryTypeList() {
        List<PrinterDocumentTypeDO> typeList = printerDocumentTypeService.listPrinterDocumentType();
        List<PrinterDocumentTypeVO> typeVOList = new ArrayList<>(10);
        for (PrinterDocumentTypeDO documentType : typeList) {
            PrinterDocumentTypeVO typeVO = new PrinterDocumentTypeVO();
            BeanUtils.copyProperties(documentType, typeVO);
            typeVOList.add(typeVO);
        }
        return Response.newInstance().setData(typeVOList);
    }

    /**
     * 查询店铺-模板列表（含默认模板）
     * @return {@link Response}
     */
    @GetMapping("list")
    public Response querylist(@RequestParam(name = "shopId", defaultValue = "0") Integer shopId,
                              @RequestParam(name = "documentType", defaultValue = "0") Integer documentType) {
        List<PrinterTemplateDocumentVO> templateList = new ArrayList<>(10);
        List<PrinterTemplateDocumentDO> scShopPrinterTemplateDocuments = printerTemplateDocumentService.listPrinterTemplateDocumentByShopIdAndDocumentType(shopId, documentType);
        for (PrinterTemplateDocumentDO templateDocument : scShopPrinterTemplateDocuments) {
            PrinterTemplateDocumentVO templateVO = new PrinterTemplateDocumentVO();
            BeanUtils.copyProperties(templateDocument, templateVO);
            templateVO.setDefaultTemplet(0);
            if (templateDocument.getShopId() == 0) {
                templateVO.setDefaultTemplet(1);
            }
            templateList.add(templateVO);
        }
        return Response.newInstance().setData(templateList);
    }

    /**
     * 票据样式-获取系统组件
     * @return {@link Response}
     */
    @GetMapping("systemComponents")
    public Response getSystemComponents(@RequestParam(name = "templateId", defaultValue = "0") Integer templateId) {
        PrinterTemplateDocumentDO templateDocument = printerTemplateDocumentService.getShopPrinterTemplateDocumentByPrimaryId(templateId);
        if (templateDocument == null || templateDocument.getStatus() == 0) {
            throw new PrinterTemplateDocumentException();
        }
        int documentType = templateDocument.getDocumentType();
        List<PrinterSystemComponentDO> scShopPrinterSystemComponents = printerSystemComponentService.listPrinterSystemComponentByTemplateType(documentType);
        Map<Integer, List<Object>> listMap = buildSystemComponentStructure(scShopPrinterSystemComponents);
        List<Map<String, Object>> modules = extractTemplateModule(listMap, templateDocument.getDocumentType());

        return Response.newInstance().setData(modules);
    }

    /**
     * 票据样式-获取预览组件
     * @return {@link Response}
     */
    @GetMapping("previewComponents")
    public Response getPreviewComponents(@RequestParam(name = "templateId", defaultValue = "0") Integer templateId) {
        PrinterTemplateDocumentDO templateDocument = printerTemplateDocumentService.getShopPrinterTemplateDocumentByPrimaryId(templateId);
        if (templateDocument == null || templateDocument.getStatus() == 0) {
            throw new PrinterTemplateDocumentException();
        }
        List<PrinterCustomComponentDO> customComponentList = printerCustomComponentService.listPrinterTemplateCustomComponentByTemplateId(templateId);
        Map<Integer, List<Object>> previewRowsMap = buildPreviewComponentStructure(customComponentList);
        List<Map<String, Object>> modules = extractTemplateModule(previewRowsMap, templateDocument.getDocumentType());
        return  Response.newInstance().setData(modules);
    }

    /**
     * 票据样式-提取模块
     * @param rowsMap      数据结构
     * @param documentType 票据类型
     */
    private List<Map<String, Object>> extractTemplateModule(Map<Integer, List<Object>> rowsMap, Integer documentType) {
        List<PrinterTemplateModuleDO> moduleList = printerTemplateModuleService.listPrinterTemplateModuleByDocumentId(documentType);
        List<Map<String, Object>> modules = new ArrayList<>(10);
        for (PrinterTemplateModuleDO templateModule : moduleList) {
            Map<String, Object> module = new HashMap<>(10);
            module.put("moduleId", templateModule.getId());
            module.put("moduleName", templateModule.getModuleName());
            module.put("moduleDescribe", templateModule.getModuleDescribe());
            module.put("sort", templateModule.getSort());
            module.put("rows", rowsMap.get(templateModule.getId()));
            modules.add(module);
        }
        return modules;
    }

    /**
     * 票据样式-系统组件数据结构
     *
     * @param systemComponentList 组件列表
     * @return 按模块划分组件，K -> 模块名 V -> components
     */
    private Map<Integer, List<Object>> buildSystemComponentStructure(List<PrinterSystemComponentDO> systemComponentList) {
        Map<Integer, List<Object>> moduleComponentMap = new HashMap<>(10);
        for (PrinterSystemComponentDO systemComponent : systemComponentList) {
            List<Object> components = new ArrayList<>();
            // 1.判断所属模块
            if (moduleComponentMap.containsKey(systemComponent.getModuleId())) {
                components = moduleComponentMap.get(systemComponent.getModuleId());
            }
            // 2.判断父子组件
            if (systemComponent.getParentId() == 0) {
                if (SystemComponentTypeEnum.TEXT.getName().equals(systemComponent.getType())) {
                    components.add(systemComponent);
                }
                if (SystemComponentTypeEnum.HIDDEN.getName().equals(systemComponent.getType())) {
                    components.add(systemComponent);
                }
                if (SystemComponentTypeEnum.GRID.getName().equals(systemComponent.getType())) {
                    Map<String, Object> componentItem = new HashMap<>(16);
                    componentItem.put("component", systemComponent);
                    components.add(componentItem);
                }
            } else {
                // 3.找到父组件
                Map<String, Object> componentItem = new HashMap<>(16);
                for (Object item : components) {
                    if (item instanceof Map) {
                        Map<String, Object> oldComponentItem = (Map<String, Object>) item;
                        PrinterSystemComponentDO component = (PrinterSystemComponentDO) oldComponentItem.get("component");
                        if (component.getId().equals(systemComponent.getParentId())) {
                            componentItem = oldComponentItem;
                        }
                    }
                }
                if (componentItem.size() == 0) {
                    components.add(componentItem);
                }
                // 4.判断所属分类
                for (SystemComponentTypeEnum typeEnum : SystemComponentTypeEnum.values()) {
                    if (typeEnum.getName().equals(systemComponent.getType())) {
                        switch (typeEnum) {
                            case TITLE:
                                componentItem.put("tableTitle", systemComponent);
                                break;
                            case CATEGORY:
                                componentItem.put("category", systemComponent);
                                break;
                            case TABLE_HEAD:
                                // 5.表格标题（单行）
                                Map<String, Object> thead = new HashMap<>(16);
                                if (componentItem.containsKey("thead")) {
                                    thead = (Map<String, Object>) componentItem.get("thead");
                                } else {
                                    componentItem.put("thead", thead);
                                }
                                Map<String, Object> tableRowSet = new HashMap<>(16);
                                if (thead.containsKey("tableRowSet")) {
                                    tableRowSet = (Map<String, Object>) thead.get("tableRowSet");
                                } else {
                                    thead.put("tableRowSet", tableRowSet);
                                }
                                List<PrinterSystemComponentDO> columnSet = new ArrayList<>(10);
                                if (tableRowSet.containsKey("columnSet")) {
                                    columnSet = (List<PrinterSystemComponentDO>) tableRowSet.get("columnSet");
                                } else {
                                    tableRowSet.put("columnSet", columnSet);
                                }
                                columnSet.add(systemComponent);
                                break;
                            case TEXT:
                                // 6.表格体（多行）
                                Map<String, Object> tbody = new HashMap<>(16);
                                if (componentItem.containsKey("tbody")) {
                                    tbody = (Map<String, Object>) componentItem.get("tbody");
                                } else {
                                    componentItem.put("tbody", tbody);
                                }
                                List<Map<String, List<PrinterSystemComponentDO>>> tbodyTableRowSet = new ArrayList<>(10);
                                if (tbody.containsKey("tableRowSet")) {
                                    tbodyTableRowSet = (List<Map<String, List<PrinterSystemComponentDO>>>) tbody.get("tableRowSet");
                                } else {
                                    tbody.put("tableRowSet", tbodyTableRowSet);
                                }
                                List<PrinterSystemComponentDO> tbodyColumnSet = new ArrayList<>(10);
                                for (Map<String, List<PrinterSystemComponentDO>> tbodyColumnSetItem : tbodyTableRowSet) {
                                    List<PrinterSystemComponentDO> oldTbodyColumnSet = tbodyColumnSetItem.get("columnSet");
                                    for (PrinterSystemComponentDO anOldTbodyColumnSet : oldTbodyColumnSet) {
                                        if (anOldTbodyColumnSet.getRow().equals(systemComponent.getRow())) {
                                            tbodyColumnSet = oldTbodyColumnSet;
                                        }
                                    }
                                }
                                if (tbodyColumnSet.size() == 0) {
                                    Map<String, List<PrinterSystemComponentDO>> tbodyColumnSetItem = new HashMap<>(16);
                                    tbodyColumnSetItem.put("columnSet", tbodyColumnSet);
                                    tbodyTableRowSet.add(tbodyColumnSetItem);
                                }
                                tbodyColumnSet.add(systemComponent);
                            default:
                        }
                    }
                }
            }
            moduleComponentMap.put(systemComponent.getModuleId(), components);
        }
        return moduleComponentMap;
    }

    /**
     * 票据样式-预览组件数据结构
     *
     * @param customComponentList 组件列表
     * @return 按模块划分组件，K -> 模块名 V -> components
     */
    private Map<Integer, List<Object>> buildPreviewComponentStructure(List<PrinterCustomComponentDO> customComponentList) {
        Map<Integer, List<Object>> moduleComponentMap = new HashMap<>(10);
        for (PrinterCustomComponentDO customComponent : customComponentList) {
            List<Object> components = new ArrayList<>();
            // 1.判断所属模块
            if (moduleComponentMap.containsKey(customComponent.getModuleId())) {
                components = moduleComponentMap.get(customComponent.getModuleId());
            }
            // 2.判断父子组件
            if (customComponent.getParentId() == 0) {
                if (SystemComponentTypeEnum.TEXT.getName().equals(customComponent.getType())) {
                    components.add(customComponent);
                }
                if (SystemComponentTypeEnum.HIDDEN.getName().equals(customComponent.getType())) {
                    components.add(customComponent);
                }
                if (SystemComponentTypeEnum.GRID.getName().equals(customComponent.getType())) {
                    Map<String, Object> componentItem = new HashMap<>(16);
                    componentItem.put("component", customComponent);
                    components.add(componentItem);
                }
            } else {
                // 3.找到父组件
                Map<String, Object> componentItem = new HashMap<>(16);
                for (Object item : components) {
                    if (item instanceof Map) {
                        Map<String, Object> oldComponentItem = (Map<String, Object>) item;
                        PrinterCustomComponentDO component = (PrinterCustomComponentDO) oldComponentItem.get("component");
                        if (component.getSystemComponentId().equals(customComponent.getParentId())) {
                            componentItem = oldComponentItem;
                        }
                    }
                }
                if (componentItem.size() == 0) {
                    components.add(componentItem);
                }
                // 4.判断所属分类
                for (SystemComponentTypeEnum typeEnum : SystemComponentTypeEnum.values()) {
                    if (typeEnum.getName().equals(customComponent.getType())) {
                        switch (typeEnum) {
                            case TITLE:
                                componentItem.put("tableTitle", customComponent);
                                break;
                            case CATEGORY:
                                componentItem.put("category", customComponent);
                                break;
                            case TABLE_HEAD:
                                // 5.表格标题（单行）
                                Map<String, Object> thead = new HashMap<>(16);
                                if (componentItem.containsKey("thead")) {
                                    thead = (Map<String, Object>) componentItem.get("thead");
                                } else {
                                    componentItem.put("thead", thead);
                                }
                                Map<String, Object> tableRowSet = new HashMap<>(16);
                                if (thead.containsKey("tableRowSet")) {
                                    tableRowSet = (Map<String, Object>) thead.get("tableRowSet");
                                } else {
                                    thead.put("tableRowSet", tableRowSet);
                                }
                                List<PrinterCustomComponentDO> columnSet = new ArrayList<>(10);
                                if (tableRowSet.containsKey("columnSet")) {
                                    columnSet = (List<PrinterCustomComponentDO>) tableRowSet.get("columnSet");
                                } else {
                                    tableRowSet.put("columnSet", columnSet);
                                }
                                columnSet.add(customComponent);
                                break;
                            case TEXT:
                                // 6.表格体（多行）
                                Map<String, Object> tbody = new HashMap<>(16);
                                if (componentItem.containsKey("tbody")) {
                                    tbody = (Map<String, Object>) componentItem.get("tbody");
                                } else {
                                    componentItem.put("tbody", tbody);
                                }
                                List<Map<String, List<PrinterCustomComponentDO>>> tbodyTableRowSet = new ArrayList<>(10);
                                if (tbody.containsKey("tableRowSet")) {
                                    tbodyTableRowSet = (List<Map<String, List<PrinterCustomComponentDO>>>) tbody.get("tableRowSet");
                                } else {
                                    tbody.put("tableRowSet", tbodyTableRowSet);
                                }
                                List<PrinterCustomComponentDO> tbodyColumnSet = new ArrayList<>(10);
                                for (Map<String, List<PrinterCustomComponentDO>> tbodyColumnSetItem : tbodyTableRowSet) {
                                    List<PrinterCustomComponentDO> oldTbodyColumnSet = tbodyColumnSetItem.get("columnSet");
                                    for (PrinterCustomComponentDO anOldTbodyColumnSet : oldTbodyColumnSet) {
                                        if (anOldTbodyColumnSet.getRow().equals(customComponent.getRow())) {
                                            tbodyColumnSet = oldTbodyColumnSet;
                                        }
                                    }
                                }
                                if (tbodyColumnSet.size() == 0) {
                                    Map<String, List<PrinterCustomComponentDO>> tbodyColumnSetItem = new HashMap<>(16);
                                    tbodyColumnSetItem.put("columnSet", tbodyColumnSet);
                                    tbodyTableRowSet.add(tbodyColumnSetItem);
                                }
                                tbodyColumnSet.add(customComponent);
                            default:
                        }
                    }
                }
            }
            moduleComponentMap.put(customComponent.getModuleId(), components);
        }

        Map<Integer, List<Object>> previewRowsMap = new HashMap<>(16);
        Set<Map.Entry<Integer, List<Object>>> entries = moduleComponentMap.entrySet();
        for (Map.Entry<Integer, List<Object>> entry : entries) {
            Integer moduleId = entry.getKey();
            List<Object> previewRowsList = new ArrayList<>(10);
            if (previewRowsMap.containsKey(moduleId)) {
                previewRowsList = previewRowsMap.get(moduleId);
            }
            for (Object item : entry.getValue()) {
                PrinterCustomComponentDO customComponent;
                if (item instanceof Map) {
                    Map<String, Object> component = (Map<String, Object>) item;
                    customComponent = (PrinterCustomComponentDO) component.get("component");
                } else {
                    customComponent = (PrinterCustomComponentDO) item;
                    // 合并行
                    List<Object> oldComponents = new ArrayList<>(10);
                    for (Object previewRowItem : previewRowsList) {
                        Map<String, Object> previewRow = (Map<String, Object>) previewRowItem;
                        List<Object> components = (List<Object>) previewRow.get("components");
                        for (Object componentItem : components) {
                            if (componentItem instanceof PrinterCustomComponentDO) {
                                PrinterCustomComponentDO printerCustomComponent = (PrinterCustomComponentDO) componentItem;
                                if (printerCustomComponent.getRow().equals(customComponent.getRow())) {
                                    oldComponents = components;
                                    break;
                                }
                            }
                        }
                    }
                    if (oldComponents.size() > 0) {
                        oldComponents.add(customComponent);
                        continue;
                    }
                }
                List<Object> componetsList = new ArrayList<>();
                componetsList.add(item);
                Map<String, Object> previewRow = new HashMap<>(16);
                previewRow.put("type", customComponent.getType());
                previewRow.put("sort", customComponent.getSort());
                previewRow.put("components", componetsList);
                previewRowsList.add(previewRow);
            }
            previewRowsMap.put(moduleId, previewRowsList);
        }
        return previewRowsMap;
    }

    /**
     * 店铺-新增模板
     * @return {@link Response}
     */
    @PostMapping("save")
    public Response save(@RequestBody CustomTemplateDocumentForm form) {
        form.validateParam();

        PrinterTemplateDocumentDO templateDocumentDO = printerTemplateDocumentService.getShopPrinterTemplateDocumentByName(form.getName());
        if (templateDocumentDO != null) {
            throw new PrinterTemplateDocumentException("模板名称已存在，请更换模板名称！");
        }
        PrinterTemplateDocumentDO documentDO = form.convertToScShopPrinterTemplateDocument();
        Integer templateId = printerTemplateDocumentService.saveShopPrinterTemplateDocument(documentDO);
        try {
            handleCustomTemplateComponent(templateId, form.getModules());
        } catch (Exception e) {
            logger.error("新增模板异常", e);
            // 回滚
            printerTemplateDocumentService.removeShopPrinterTemplateDocumentByPrimaryId(templateId);
            throw new PrinterTemplateDocumentException("新增模板，发生异常！");
        }
        return Response.newInstance().setData(MapHelper.newInstance().put("templateId", templateId).map());
    }

    /**
     * 店铺-更新模板
     * @return {@link Response}
     */
    @PutMapping("update")
    public Response update(@RequestBody UpdateCustomTemplateDocumentForm form) {
        form.validateParam();

        PrinterTemplateDocumentDO documentDO = printerTemplateDocumentService.getShopPrinterTemplateDocumentByName(form.getName());
        if (documentDO != null && !documentDO.getId().equals(form.getTemplateId())) {
            throw new PrinterTemplateDocumentException("模板名称已存在，请更换模板名称！");
        }
        PrinterTemplateDocumentDO oldTemplateDocumentInfo = printerTemplateDocumentService.getShopPrinterTemplateDocumentByPrimaryId(form.getTemplateId());
        if (oldTemplateDocumentInfo == null || oldTemplateDocumentInfo.getStatus() == 0) {
            throw new PrinterTemplateDocumentException();
        }
        if (oldTemplateDocumentInfo.getShopId() == 0 || oldTemplateDocumentInfo.getStatus() == 1) {
            throw new PrinterTemplateDocumentException("该模板为默认模板或者使用中，不允许修改！");
        }
        // 更新模板信息
        oldTemplateDocumentInfo.setName(form.getName());
        oldTemplateDocumentInfo.setUrl(form.getUrl());
        printerTemplateDocumentService.updateShopPrinterTemplateDocumentByPrimaryId(oldTemplateDocumentInfo);
        // 更新模板组件
        printerCustomComponentService.removeMultiplePrinterCustomComponentByTemplateId(form.getTemplateId());
        handleCustomTemplateComponent(form.getTemplateId(), form.getModules());
        return Response.newInstance();
    }

    /**
     * 处理自定义模板，提取自定义组件
     *
     * @param templateId 自定义模板id
     * @param modulesStr 模板组件
     */
    private void handleCustomTemplateComponent(Integer templateId, String modulesStr) {
        JSONArray modules = JSONObject.parseArray(modulesStr);
        List<PrinterCustomComponentDO> customComponentList = new ArrayList<>(100);
        for (Object item : modules) {
            JSONArray rows = ((JSONObject) item).getJSONArray("rows");
            for (Object row : rows) {
                JSONArray components = ((JSONObject) row).getJSONArray("components");
                JSONObject o = (JSONObject) components.get(0);

                String componentStr = o.getString("component");
                if (StringUtils.isBlank(componentStr)) {
                    for (Object component : components) {
                        convertCustomComponent(templateId, JSONObject.toJSONString(component), customComponentList);
                    }
                    continue;
                } else {
                    convertCustomComponent(templateId, componentStr, customComponentList);
                }
                String tableTitleStr = o.getString("tableTitle");
                if (StringUtils.isNotBlank(tableTitleStr)) {
                    convertCustomComponent(templateId, tableTitleStr, customComponentList);
                }
                String categoryStr = o.getString("category");
                if (StringUtils.isNotBlank(categoryStr)) {
                    convertCustomComponent(templateId, categoryStr, customComponentList);
                }
                String theadStr = o.getString("thead");
                if (StringUtils.isNotBlank(theadStr)) {
                    JSONObject thead = JSON.parseObject(theadStr);
                    JSONObject tableRowSet = (JSONObject) thead.get("tableRowSet");
                    JSONArray columnSet = tableRowSet.getJSONArray("columnSet");
                    for (Object columnItem : columnSet) {
                        convertCustomComponent(templateId, JSONObject.toJSONString(columnItem), customComponentList);
                    }
                }
                String tbodyStr = o.getString("tbody");
                if (StringUtils.isNotBlank(tbodyStr)) {
                    JSONObject tbody = JSON.parseObject(tbodyStr);
                    JSONArray tableRowSet = tbody.getJSONArray("tableRowSet");
                    for (Object tableRowSetItem : tableRowSet) {
                        JSONArray columnSet = ((JSONObject) tableRowSetItem).getJSONArray("columnSet");
                        for (Object columnSetItem : columnSet) {
                            convertCustomComponent(templateId, JSONObject.toJSONString(columnSetItem), customComponentList);
                        }
                    }
                }
            }
        }
        printerCustomComponentService.saveMultiplePrinterCustomComponent(customComponentList);
    }

    /**
     * 转换模板自定义组件
     *
     * @param templateId          模板id
     * @param componentStr        系统组件
     * @param customComponentList 自定义组件列表
     */
    private void convertCustomComponent(Integer templateId, String componentStr, List<PrinterCustomComponentDO> customComponentList) {
        PrinterSystemComponentDO templateComponent = JSONObject.parseObject(componentStr, PrinterSystemComponentDO.class);
        PrinterCustomComponentDO customComponent = new PrinterCustomComponentDO();
        customComponent.setDocumentTemplateId(templateId);
        customComponent.setSystemComponentId(templateComponent.getId());
        customComponent.setValueStyle(templateComponent.getValueStyle());
        customComponentList.add(customComponent);
    }

    /**
     * 店铺-删除模板
     * @return {@link Response}
     */
    @DeleteMapping("")
    public Response remove(@RequestParam(name = "shopId", defaultValue = "0") Integer shopId,
                           @RequestParam(name = "templateId", defaultValue = "0") Integer templateId) {
        PrinterTemplateDocumentDO templateDocumentInfo = printerTemplateDocumentService.getShopPrinterTemplateDocumentByPrimaryId(templateId);
        if (templateDocumentInfo == null || templateDocumentInfo.getStatus() == 0 || !shopId.equals(templateDocumentInfo.getShopId())) {
            throw new PrinterTemplateDocumentException("该模板为默认模板或者模板不存在！");
        }
        if (templateDocumentInfo.getShopId() == 0 || templateDocumentInfo.getStatus() == 1) {
            throw new PrinterTemplateDocumentException("该模板为默认模板或者使用中，不允许删除！");
        }
        printerTemplateDocumentService.removeShopPrinterTemplateDocumentByPrimaryId(templateId);
        printerCustomComponentService.removeMultiplePrinterCustomComponentByTemplateId(templateId);
        return Response.newInstance();
    }

    /**
     * 店铺-启用模板
     * @return {@link Response}
     */
    @PutMapping("enable")
    public Response enable(@RequestBody TemplateDocumentEnableForm form) {
        form.validateParam();

        int templateId = form.getTemplateId();
        PrinterTemplateDocumentDO documentDO = printerTemplateDocumentService.getShopPrinterTemplateDocumentByPrimaryId(templateId);
        if (documentDO == null || documentDO.getStatus() == 0 || !form.getShopId().equals(documentDO.getShopId())) {
            throw new PrinterTemplateDocumentException("该模板为默认模板或者模板不存在！");
        }
        printerTemplateDocumentService.enableShopPrinterTemplate(form.getShopId(), documentDO.getDocumentType(), templateId);
        return Response.newInstance();
    }
}

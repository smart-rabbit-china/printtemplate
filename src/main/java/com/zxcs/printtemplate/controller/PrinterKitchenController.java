package com.zxcs.printtemplate.controller;

import com.github.pagehelper.PageInfo;
import com.zxcs.printtemplate.exception.print.PrinterKitchenException;
import com.zxcs.printtemplate.form.PrinterKitchenForm;
import com.zxcs.printtemplate.helper.MapHelper;
import com.zxcs.printtemplate.model.PrinterKitchenDO;
import com.zxcs.printtemplate.model.PrinterKitchenDocumentTypeRulesDO;
import com.zxcs.printtemplate.model.PrinterKitchenGoodsRulesDO;
import com.zxcs.printtemplate.model.PrinterKitchenTableRulesDO;
import com.zxcs.printtemplate.service.IPrinterKitchenDocumentTypeRulesService;
import com.zxcs.printtemplate.service.IPrinterKitchenGoodsRulesService;
import com.zxcs.printtemplate.service.IPrinterKitchenService;
import com.zxcs.printtemplate.service.IPrinterKitchenTableRulesService;
import com.zxcs.printtemplate.vo.PrinterKitchenIntegrationVO;
import com.zxcs.printtemplate.vo.PrinterKitchenVO;
import com.zxcs.printtemplate.vo.Response;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 打印机-出票口Rest
 * Created by zfh on 2019/01/09
 */
@RequestMapping("printerKitchen")
@RestController
public class PrinterKitchenController {

    @Autowired
    private IPrinterKitchenService printerKitchenService;

    @Autowired
    private IPrinterKitchenDocumentTypeRulesService printerKitchenDocumentTypeRulesService;

    @Autowired
    private IPrinterKitchenTableRulesService printerKitchenTableRulesService;

    @Autowired
    private IPrinterKitchenGoodsRulesService printerKitchenGoodsRulesService;

    /**
     * 新增-出票口
     * @param form {@link PrinterKitchenForm}
     * @return {@link Response}
     */
    @PostMapping("save")
    public Response save (@RequestBody PrinterKitchenForm form) {
        form.validateParam();

        Integer printerKitchenId = 0;
        try {
            printerKitchenId = printerKitchenService.save(form.getPrinterKitchen());
            printerKitchenDocumentTypeRulesService.saveMultipleRecord(form.getDocumentTypeRulesList(printerKitchenId));
            if (form.getTable() == 1) {
                printerKitchenTableRulesService.saveMultipleRecord(form.getTableRulesList(printerKitchenId));
            }
            if (form.getGoods() == 1) {
                printerKitchenGoodsRulesService.saveMultipleRecord(form.getGoodsRulesList(printerKitchenId));
            }
        } catch (Exception e) {
            // 回滚
            PrinterKitchenDO params = new PrinterKitchenDO();
            params.setId(printerKitchenId);
            params.setDelete(1);
            printerKitchenService.updateByPrimaryKeySelective(params);
            throw new PrinterKitchenException("新增出票口异常！");
        }
        return Response.newInstance().setData(MapHelper.newInstance().put("printerKitchenId", printerKitchenId).map());
    }

    /**
     * 出票口-列表
     * @return {@link Response}
     */
    @GetMapping("list")
    public Response queryList (@RequestParam(name = "shopId", defaultValue = "0") Integer shopId,
                               @RequestParam(name = "page", defaultValue = "1") Integer page,
                               @RequestParam(name = "rows", defaultValue = "10") Integer rows) {
        PageInfo<PrinterKitchenDO> pageInfo = printerKitchenService.listPrinterKitchenByShopId(shopId, page, rows);

        List<PrinterKitchenVO> voList = new ArrayList<>(10);
        for (PrinterKitchenDO printerKitchen : pageInfo.getList()) {
            PrinterKitchenVO printerKitchenVO = new PrinterKitchenVO();
            BeanUtils.copyProperties(printerKitchen, printerKitchenVO);
            voList.add(printerKitchenVO);
        }
        return Response.newInstance().setData(MapHelper.newInstance().put("total", pageInfo.getTotal()).put("list", voList).map());
    }

    /**
     * 查询-出票口
     * @return {@link Response}
     */
    @GetMapping("")
    public Response queryInfo (@RequestParam(name = "id", defaultValue = "0") Integer id) {
        PrinterKitchenDO printerKitchen = printerKitchenService.getByPrimaryKey(id);
        if (printerKitchen == null || printerKitchen.getDelete() == 1) {
            throw new PrinterKitchenException();
        }
        PrinterKitchenIntegrationVO printerKitchenIntegrationVO = new PrinterKitchenIntegrationVO();
        BeanUtils.copyProperties(printerKitchen, printerKitchenIntegrationVO);
        List<PrinterKitchenDocumentTypeRulesDO> documentTypeRulesList = printerKitchenDocumentTypeRulesService.listPrinterKitchenDocumentTypeRulesByPrinterKitchenId(id);
        List<Map<String, Object>> documentTypeRules = new ArrayList<>(10);
        for (PrinterKitchenDocumentTypeRulesDO kitchenDocumentTypeRules : documentTypeRulesList) {
            Map<String, Object> documentTypeRulesItem = new HashMap<>(10);
            documentTypeRulesItem.put("documentTypeId", kitchenDocumentTypeRules.getDocumentTypeId());
            documentTypeRulesItem.put("number", kitchenDocumentTypeRules.getNumber());
            documentTypeRulesItem.put("printerType", kitchenDocumentTypeRules.getPrinterType());
            documentTypeRules.add(documentTypeRulesItem);
        }
        List<Map<String, Object>> tableRules = new ArrayList<>(10);
        if (printerKitchen.getTable() == 1) {
            List<PrinterKitchenTableRulesDO> kitchenTableRulesList = printerKitchenTableRulesService.listPrinterKitchenTableRulesByPrinterKitchenId(id);
            for (PrinterKitchenTableRulesDO kitchenTableRules : kitchenTableRulesList) {
                Map<String, Object> tableRulesItem = new HashMap<>(10);
                tableRulesItem.put("tableId", kitchenTableRules.getTableId());
                tableRules.add(tableRulesItem);
            }
        }
        List<Map<String, Object>> goodsRules = new ArrayList<>(10);
        if (printerKitchen.getGoods() == 1) {
            List<PrinterKitchenGoodsRulesDO> printerKitchenGoodsRulesList = printerKitchenGoodsRulesService.listPrinterKitchenGoodsRulesByPrinterKitchenId(id);
            for (PrinterKitchenGoodsRulesDO kitchenGoodsRules : printerKitchenGoodsRulesList) {
                Map<String, Object> goodsRulesItem = new HashMap<>(10);
                goodsRulesItem.put("goodsId", kitchenGoodsRules.getGoodsId());
                goodsRulesItem.put("stockId", kitchenGoodsRules.getStockId());
                goodsRules.add(goodsRulesItem);
            }
        }
        printerKitchenIntegrationVO.setDocumentTypeRules(documentTypeRules);
        printerKitchenIntegrationVO.setTableRules(tableRules);
        printerKitchenIntegrationVO.setGoodsRules(goodsRules);
        return Response.newInstance().setData(printerKitchenIntegrationVO);
    }

    /**
     * 更新-出票口
     * @return {@link Response}
     */
    @PutMapping("edit")
    public Response doEdit (@RequestBody PrinterKitchenForm form) {
        form.validateParam();

        Integer printerKitchenId = form.getId();
        PrinterKitchenDO printerKitchenDO = printerKitchenService.getByPrimaryKey(printerKitchenId);
        if (printerKitchenDO == null || printerKitchenDO.getDelete() == 1) {
            throw new PrinterKitchenException();
        }
        printerKitchenService.updateByPrimaryKeySelective(form.getUpdatePrinterKitchen());
        printerKitchenDocumentTypeRulesService.removeMultipleRecordByPrinterKitchenId(form.getId());
        printerKitchenTableRulesService.removeMultipleRecordByPrinterKitchenId(printerKitchenId);
        printerKitchenGoodsRulesService.removeMultipleRecordByPrinterKitchenId(printerKitchenId);

        printerKitchenDocumentTypeRulesService.saveMultipleRecord(form.getDocumentTypeRulesList(printerKitchenId));
        if (form.getTable() == 1) {
            printerKitchenTableRulesService.saveMultipleRecord(form.getTableRulesList(printerKitchenId));
        }
        if (form.getGoods() == 1) {
            printerKitchenGoodsRulesService.saveMultipleRecord(form.getGoodsRulesList(printerKitchenId));
        }
        return Response.newInstance();
    }

    /**
     * 删除-出票口
     * @return {@link Response}
     */
    @DeleteMapping("")
    public Response doDelete (@RequestParam(name = "id", defaultValue = "0") Integer id) {
        PrinterKitchenDO printerKitchen = printerKitchenService.getByPrimaryKey(id);
        if (printerKitchen == null || printerKitchen.getDelete().equals(1)) {
            throw new PrinterKitchenException();
        }
        PrinterKitchenDO params = new PrinterKitchenDO();
        params.setId(printerKitchen.getId());
        params.setDelete(1);
        Integer affected = printerKitchenService.updateByPrimaryKeySelective(params);
        if (affected > 0) {
            printerKitchenDocumentTypeRulesService.removeMultipleRecordByPrinterKitchenId(id);
            printerKitchenTableRulesService.removeMultipleRecordByPrinterKitchenId(id);
            printerKitchenGoodsRulesService.removeMultipleRecordByPrinterKitchenId(id);
        }
        return Response.newInstance();
    }
}

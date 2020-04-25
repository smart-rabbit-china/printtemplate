package com.zxcs.printtemplate.form;

import com.zxcs.printtemplate.model.PrinterKitchenDO;
import com.zxcs.printtemplate.model.PrinterKitchenDocumentTypeRulesDO;
import com.zxcs.printtemplate.model.PrinterKitchenGoodsRulesDO;
import com.zxcs.printtemplate.model.PrinterKitchenTableRulesDO;
import lombok.Data;
import lombok.ToString;
import org.springframework.beans.BeanUtils;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

/**
 * 新增/更新-出票口 请求对象
 * Created by zfh on 2019/01/09
 */
@Data
@ToString
public class PrinterKitchenForm extends BaseForm {

    /**
     * 出票口ID
     */
    private Integer id;

    /**
     * 出票口名称
     */
    @NotEmpty(message = "缺少name")
    private String name;

    /**
     * 打印机ID
     */
    @NotNull(message = "缺少printerDeviceId")
    private Integer printerDeviceId;

    /**
     * 店铺ID
     */
    @NotNull(message = "缺少shopId")
    private Integer shopId;

    /**
     * 平台用户ID
     */
    @NotNull(message = "缺少operatorId")
    private Integer operatorId;

    /**
     * 出票口票据类型
     */
    @NotEmpty(message = "缺少documentTypeRules")
    private List<DocumentTypeRule> documentTypeRules;

    /**
     * 是否配置桌台区域：0-未配置 1-配置
     */
    @NotNull(message = "缺少table")
    private Integer table;

    /**
     * 是否配置打印的菜品：0-未配置 1-配置
     */
    @NotNull(message = "缺少goods")
    private Integer goods;

    /**
     * 桌台区域，没有配置传空数组
     */
    @NotNull(message = "缺少tableRules")
    private List<PrinterKitchenTableRule> tableRules;

    /**
     * 打印菜品，没有配置传空数组
     */
    @NotNull(message = "缺少goodsRules")
    private List<PrinterKitchenGoodsRule> goodsRules;

    @Override
    public void validateParam() {
        super.validateParam();
        for (DocumentTypeRule typeRule : documentTypeRules) {
            typeRule.validateParam();
        }
        for (PrinterKitchenTableRule tableRule : tableRules) {
            tableRule.validateParam();
        }
        for (PrinterKitchenGoodsRule goodsRule : goodsRules) {
            goodsRule.validateParam();
        }
    }

    /**
     * 获取-新增-出票口实体对象
     */
    public PrinterKitchenDO getPrinterKitchen () {
        PrinterKitchenDO printerKitchen = new PrinterKitchenDO();
        BeanUtils.copyProperties(this, printerKitchen);
        printerKitchen.setDelete(0);
        printerKitchen.setCreatorId(operatorId);
        printerKitchen.setCreatorName("");
        return printerKitchen;
    }

    /**
     * 获取-更新-出票口实体对象
     */
    public PrinterKitchenDO getUpdatePrinterKitchen() {
        PrinterKitchenDO printerKitchen = new PrinterKitchenDO();
        BeanUtils.copyProperties(this, printerKitchen);
        printerKitchen.setUpdatorId(operatorId);
        printerKitchen.setUpdatorName("");
        return printerKitchen;
    }

    /**
     * 出票口票据类型
     * @param printerKitchenId 出票口ID
     */
    public List<PrinterKitchenDocumentTypeRulesDO> getDocumentTypeRulesList(Integer printerKitchenId) {
        List<PrinterKitchenDocumentTypeRulesDO> typeRulesDOList = new ArrayList<>(10);
        for (DocumentTypeRule typeRule : documentTypeRules) {
            PrinterKitchenDocumentTypeRulesDO typeRulesDO = new PrinterKitchenDocumentTypeRulesDO();
            BeanUtils.copyProperties(typeRule, typeRulesDO);
            typeRulesDO.setPrinterKitchenId(printerKitchenId);
            typeRulesDOList.add(typeRulesDO);
        }
        return typeRulesDOList;
    }

    /**
     * 获取出票口 配置的桌台区域
     * @param printerKitchenId 出票口ID
     */
    public List<PrinterKitchenTableRulesDO> getTableRulesList(Integer printerKitchenId) {
        List<PrinterKitchenTableRulesDO> tableRulesDOList = new ArrayList<>(10);
        for (PrinterKitchenTableRule tableRule : tableRules) {
            PrinterKitchenTableRulesDO tableRuleDO = new PrinterKitchenTableRulesDO();
            BeanUtils.copyProperties(tableRule, tableRuleDO);
            tableRuleDO.setPrinterKitchenId(printerKitchenId);
            tableRulesDOList.add(tableRuleDO);
        }
        return tableRulesDOList;
    }

    /**
     * 获取出票口 配置的打印菜品
     * @param printerKitchenId 出票口ID
     */
    public List<PrinterKitchenGoodsRulesDO> getGoodsRulesList(Integer printerKitchenId) {
        List<PrinterKitchenGoodsRulesDO> goodsRulesDOList = new ArrayList<>(10);
        for (PrinterKitchenGoodsRule goodsRule : goodsRules) {
            PrinterKitchenGoodsRulesDO goodsRulesDO = new PrinterKitchenGoodsRulesDO();
            BeanUtils.copyProperties(goodsRule, goodsRulesDO);
            goodsRulesDO.setPrinterKitchenId(printerKitchenId);
            goodsRulesDOList.add(goodsRulesDO);
        }
        return goodsRulesDOList;
    }
}

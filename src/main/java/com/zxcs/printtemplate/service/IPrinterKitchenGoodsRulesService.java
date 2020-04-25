package com.zxcs.printtemplate.service;

import com.zxcs.printtemplate.model.PrinterKitchenGoodsRulesDO;

import java.util.List;

/**
 * 出票口配置打印菜品相关Service
 * Created by zfh on 2019/01/09
 */
public interface IPrinterKitchenGoodsRulesService {

    /**
     * 新增记录
     * @param record {@link PrinterKitchenGoodsRulesDO}
     * @return 自增主键
     */
    Integer save(PrinterKitchenGoodsRulesDO record);

    /**
     * 新增多条记录
     * @param recordList list
     * @return 受影响的条数
     */
    Integer saveMultipleRecord(List<PrinterKitchenGoodsRulesDO> recordList);

    /**
     * 通过出票口ID 删除多条记录（软删除）
     * @param printerKitchenId 出票口ID
     * @return 受影响的条数
     */
    Integer removeMultipleRecordByPrinterKitchenId (Integer printerKitchenId);

    /**
     * 查询出票口 配置的打印菜品
     * @param printerKitchenId 出票口id
     * @return list
     */
    List<PrinterKitchenGoodsRulesDO> listPrinterKitchenGoodsRulesByPrinterKitchenId(Integer printerKitchenId);

    /**
     * 根据主键查记录
     * @param id 主键
     * @return {@link PrinterKitchenGoodsRulesDO}
     */
    PrinterKitchenGoodsRulesDO getByPrimaryKey(Integer id);

    /**
     * 根据主键更新记录
     * @param record {@link PrinterKitchenGoodsRulesDO}
     * @return 受影响的条数
     */
    Integer updateByPrimaryKeySelective(PrinterKitchenGoodsRulesDO record);
}

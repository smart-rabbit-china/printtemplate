package com.zxcs.printtemplate.dao;

import com.zxcs.printtemplate.model.PrinterKitchenTableRulesDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 出票口配置桌台区域相关Mapper
 */
@Mapper
public interface PrinterKitchenTableRulesMapper {

    /**
     * 新增记录
     * @param record {@link PrinterKitchenTableRulesDO}
     * @return 自增主键
     */
    Integer insert(PrinterKitchenTableRulesDO record);

    /**
     * 新增多条记录
     * @param recordList list
     * @return 受影响的条数
     */
    Integer insertMultipleRecord (List<PrinterKitchenTableRulesDO> recordList);

    /**
     * 根据出票口 删除多条记录（软删除）
     * @param printerKitchenId 出票口ID
     * @return 受影响的条数
     */
    Integer updateMultipleRecordByPrinterKitchenId (Integer printerKitchenId);

    /**
     * 查询出票口配置的桌台区域
     * @param printerKitchenId 出票口id
     * @return list
     */
    List<PrinterKitchenTableRulesDO> selectPrinterKitchenTableRulesListByPrinterKitchenId(Integer printerKitchenId);

    /**
     * 根据主键查询记录
     * @param id 主键
     * @return {@link PrinterKitchenTableRulesDO}
     */
    PrinterKitchenTableRulesDO selectByPrimaryKey(Integer id);

    /**
     * 根据主键更新记录
     * @param record {@link PrinterKitchenTableRulesDO}
     * @return 受影响的条数
     */
    Integer updateByPrimaryKeySelective(PrinterKitchenTableRulesDO record);
}
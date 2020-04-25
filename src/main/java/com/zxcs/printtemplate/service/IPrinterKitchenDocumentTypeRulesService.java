package com.zxcs.printtemplate.service;

import com.zxcs.printtemplate.model.PrinterKitchenDocumentTypeRulesDO;

import java.util.List;

/**
 * 出票口票据类型相关Service
 * Created by zfh on 2019/01/09
 */
public interface IPrinterKitchenDocumentTypeRulesService {

    /**
     * 新增记录
     * @param record {@link PrinterKitchenDocumentTypeRulesDO}
     * @return 自增主键
     */
    Integer save(PrinterKitchenDocumentTypeRulesDO record);

    /**
     * 添加多条记录
     * @param documentTypeRulesList list
     * @return 受影响的条数
     */
    Integer saveMultipleRecord (List<PrinterKitchenDocumentTypeRulesDO> documentTypeRulesList);

    /**
     * 根据 出票口ID 删除多条记录（软删除）
     * @param printerKitchenId 出票口ID
     * @return 受影响的条数
     */
    Integer removeMultipleRecordByPrinterKitchenId (Integer printerKitchenId);

    /**
     * 查询 出票口 票据类型
     * @param printerKitchenId 出票口id
     * @return list
     */
    List<PrinterKitchenDocumentTypeRulesDO> listPrinterKitchenDocumentTypeRulesByPrinterKitchenId(Integer printerKitchenId);

    /**
     * 根据主键查记录
     * @param id 主键
     * @return {@link PrinterKitchenDocumentTypeRulesDO}
     */
    PrinterKitchenDocumentTypeRulesDO selectByPrimaryKey(Integer id);

    /**
     * 根据主键更新记录
     * @param record {@link PrinterKitchenDocumentTypeRulesDO}
     * @return 受影响的条数
     */
    Integer updateByPrimaryKeySelective(PrinterKitchenDocumentTypeRulesDO record);
}

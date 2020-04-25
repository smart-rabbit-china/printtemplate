package com.zxcs.printtemplate.service;

import com.zxcs.printtemplate.model.PrinterTemplateDocumentDO;

import java.util.List;

/**
 * 打印模板-模板相关接口
 * Created by zfh on 2018/12/12
 */
public interface IPrinterTemplateDocumentService {

    /**
     * 添加模板
     * @param scShopPrinterTemplateDocument {@link PrinterTemplateDocumentDO}
     * @return 自增主键
     */
    Integer saveShopPrinterTemplateDocument (PrinterTemplateDocumentDO scShopPrinterTemplateDocument);

    /**
     * 根据主键模板查询
     * @param id 主键
     * @return {@link PrinterTemplateDocumentDO}
     */
    PrinterTemplateDocumentDO getShopPrinterTemplateDocumentByPrimaryId(Integer id);

    /**
     * 根据模板名称查询模板
     * @param name 模板名称
     * @return {@link PrinterTemplateDocumentDO}
     */
    PrinterTemplateDocumentDO getShopPrinterTemplateDocumentByName(String name);

    /**
     * 根据主键更新模板
     * @param scShopPrinterTemplateDocument {@link PrinterTemplateDocumentDO}
     * @return 受影响的行数
     */
    Integer updateShopPrinterTemplateDocumentByPrimaryId(PrinterTemplateDocumentDO scShopPrinterTemplateDocument);

    /**
     * 启用店铺模板
     * @param shopId       店铺id
     * @param documentType 票据类型
     * @param templateId   模板ID
     * @return 受影响条数
     */
    Integer enableShopPrinterTemplate(Integer shopId, Integer documentType, Integer templateId);

    /**
     * 移除自定义模板（软删除）
     * @param id 主键
     * @return 受影响的条数
     */
    Integer removeShopPrinterTemplateDocumentByPrimaryId(Integer id);

    /**
     * 查询店铺下模板列表和默认的模板
     * @param shopId 店铺id
     * @param documentType 票据类型
     * @return list
     */
    List<PrinterTemplateDocumentDO> listPrinterTemplateDocumentByShopIdAndDocumentType (Integer shopId, Integer documentType);
}

package com.zxcs.printtemplate.dao;

import com.zxcs.printtemplate.model.PrinterTemplateDocumentDO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 打印模板-模板相关Mapper
 * Created by zfh on 2018/12/12
 */
@Mapper
public interface PrinterTemplateDocumentMapper {

    /**
     * 添加模板
     * @param scShopPrinterTemplateDocument {@link PrinterTemplateDocumentDO}
     * @return 受影响的行数
     */
    Integer insertShopPrinterTemplateDocument (PrinterTemplateDocumentDO scShopPrinterTemplateDocument);

    /**
     * 根据主键查询模板
     * @param id 主键
     * @return {@link PrinterTemplateDocumentDO}
     */
    PrinterTemplateDocumentDO selectShopPrinterTemplateDocumentByPrimaryId(Integer id);

    /**
     * 根据模板名称查询模板
     * @param name 模板名称
     * @return {@link PrinterTemplateDocumentDO}
     */
    PrinterTemplateDocumentDO selectShopPrinterTemplateDocumentByName(String name);

    /**
     * 根据主键更新模板
     * @param scShopPrinterTemplateDocument {@link PrinterTemplateDocumentDO}
     * @return 受影响的行数
     */
    Integer updateShopPrinterTemplateDocumentByPrimaryId(PrinterTemplateDocumentDO scShopPrinterTemplateDocument);

    /**
     * 移除自定义模板（软删除）
     * @param id 主键
     * @return 受影响的条数
     */
    Integer updateShopPrinterTemplateDocumentStatusByPrimaryId(Integer id);

    /**
     * 禁用店铺指定类型的模板
     * @param shopId       店铺ID
     * @param templateType 模板类型
     * @return 受影响的条数
     */
    Integer disableShopPrinterTemplateDocumentStatusByShopIdAndDocumentType (@Param("shopId") Integer shopId, @Param("documentType") Integer templateType);

    /**
     * 更新店铺模板 启用/禁用 状态
     * @param templateId 模板ID
     * @param status     1-启用 2-禁用
     * @return 受影响条数
     */
    Integer updateShopPrinterTemplateDocumentStatusByShopIdAndDocumentType(@Param("templateId") Integer templateId, @Param("status") Integer status);

    /**
     * 查询店铺下模板列表和默认的模板
     * @param shopId 店铺id
     * @param documentType 票据类型
     * @return list
     */
    List<PrinterTemplateDocumentDO> selectPrinterTemplateDocumentByShopIdAndDocumentType (@Param("shopId") Integer shopId, @Param("documentType") Integer documentType);
}

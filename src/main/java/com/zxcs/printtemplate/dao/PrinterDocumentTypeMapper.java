package com.zxcs.printtemplate.dao;

import com.zxcs.printtemplate.model.PrinterDocumentTypeDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 打印模板文档类型Mapper
 * Created by zfh on 2018/12/11
 */
@Mapper
public interface PrinterDocumentTypeMapper {

    /**
     * 主键查询文档类型
     * @param id 主键
     * @return 实体
     */
    PrinterDocumentTypeDO selectPrinterDocumentTypeByPrimaryId (Integer id);

    /**
     * 查询文档类型列表（status=1）
     * @return list
     */
    List<PrinterDocumentTypeDO> selectPrinterDocumentType ();

    /**
     * 更新文档类型属性
     * @param scShopPrinterDocumentType 实体
     * @return 受影响的行数
     */
    Integer updatePrinterDocumentType (PrinterDocumentTypeDO scShopPrinterDocumentType);
}

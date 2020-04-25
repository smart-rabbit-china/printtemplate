package com.zxcs.printtemplate.dao;

import com.zxcs.printtemplate.model.PrinterTemplateModuleDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 打印模板-模块Mapper
 * Created by zfh on 2018/12/12
 */
@Mapper
public interface PrinterTemplateModuleMapper {

    /**
     * 通过文档类型查询包含的模块
     * @param documentType 文档类型主键
     * @return list
     */
    List<PrinterTemplateModuleDO> selectPrinterTemplateModuleByDocumentId (Integer documentType);
}

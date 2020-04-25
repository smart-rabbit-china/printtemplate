package com.zxcs.printtemplate.service;

import com.zxcs.printtemplate.model.PrinterTemplateModuleDO;

import java.util.List;

/**
 * 打印模板-模块相关接口
 * Created by zfh on 2018/12/12
 */
public interface IPrinterTemplateModuleService {

    /**
     * 通过文档类型查询包含的模块
     * @param documentType 文档类型主键
     * @return list
     */
    List<PrinterTemplateModuleDO> listPrinterTemplateModuleByDocumentId (Integer documentType);
}

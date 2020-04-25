package com.zxcs.printtemplate.service;

import com.zxcs.printtemplate.model.PrinterDocumentTypeDO;

import java.util.List;

/**
 * 打印模板-文档类型Service
 * Created by zfh on 2018/12/12
 */
public interface IPrinterDocumentTypeService {

    /**
     * 查询文档类型列表（status=1）
     * @return list
     */
    List<PrinterDocumentTypeDO> listPrinterDocumentType ();
}

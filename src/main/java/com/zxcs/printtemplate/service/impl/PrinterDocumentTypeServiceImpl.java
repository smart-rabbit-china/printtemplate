package com.zxcs.printtemplate.service.impl;

import com.zxcs.printtemplate.dao.PrinterDocumentTypeMapper;
import com.zxcs.printtemplate.model.PrinterDocumentTypeDO;
import com.zxcs.printtemplate.service.IPrinterDocumentTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 打印模板实现类
 * Created by zfh on 2018/12/12
 */
@Service("printerDocumentTypeService")
public class PrinterDocumentTypeServiceImpl implements IPrinterDocumentTypeService {

    @Autowired
    private PrinterDocumentTypeMapper printerDocumentTypeMapper;

    @Override
    public List<PrinterDocumentTypeDO> listPrinterDocumentType() {
        return printerDocumentTypeMapper.selectPrinterDocumentType();
    }
}

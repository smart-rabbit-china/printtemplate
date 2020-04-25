package com.zxcs.printtemplate.service.impl;

import com.zxcs.printtemplate.dao.PrinterTemplateModuleMapper;
import com.zxcs.printtemplate.model.PrinterTemplateModuleDO;
import com.zxcs.printtemplate.service.IPrinterTemplateModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 打印模板-模块接口实现类
 * Created by zfh on 2018/12/12
 */
@Service("printerTemplateModuleService")
public class PrinterTemplateModuleServiceImpl implements IPrinterTemplateModuleService {

    @Autowired
    private PrinterTemplateModuleMapper printerTemplateModuleMapper;

    @Override
    public List<PrinterTemplateModuleDO> listPrinterTemplateModuleByDocumentId(Integer documentType) {
        return printerTemplateModuleMapper.selectPrinterTemplateModuleByDocumentId(documentType);
    }
}

package com.zxcs.printtemplate.service.impl;

import com.zxcs.printtemplate.dao.PrinterTemplateDocumentMapper;
import com.zxcs.printtemplate.model.PrinterTemplateDocumentDO;
import com.zxcs.printtemplate.service.IPrinterTemplateDocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 打印模板-文档相关实现类
 * Created by zfh on 2018/12/12
 */
@Service("printerTemplateDocumentService")
public class PrinterTemplateDocumentServiceImpl implements IPrinterTemplateDocumentService {

    @Autowired
    private PrinterTemplateDocumentMapper printerTemplateDocumentMapper;

    @Override
    public Integer saveShopPrinterTemplateDocument(PrinterTemplateDocumentDO scShopPrinterTemplateDocument) {
        printerTemplateDocumentMapper.insertShopPrinterTemplateDocument(scShopPrinterTemplateDocument);
        return scShopPrinterTemplateDocument.getId();
    }

    @Override
    public PrinterTemplateDocumentDO getShopPrinterTemplateDocumentByPrimaryId(Integer id) {
        return printerTemplateDocumentMapper.selectShopPrinterTemplateDocumentByPrimaryId(id);
    }

    @Override
    public PrinterTemplateDocumentDO getShopPrinterTemplateDocumentByName(String name) {
        return printerTemplateDocumentMapper.selectShopPrinterTemplateDocumentByName(name);
    }

    @Override
    public Integer updateShopPrinterTemplateDocumentByPrimaryId(PrinterTemplateDocumentDO scShopPrinterTemplateDocument) {
        return printerTemplateDocumentMapper.updateShopPrinterTemplateDocumentByPrimaryId(scShopPrinterTemplateDocument);
    }

    @Override
    public Integer enableShopPrinterTemplate(Integer shopId, Integer documentType, Integer templateId) {
        // 禁用已启用的模板
        printerTemplateDocumentMapper.disableShopPrinterTemplateDocumentStatusByShopIdAndDocumentType(shopId, documentType);
        return printerTemplateDocumentMapper.updateShopPrinterTemplateDocumentStatusByShopIdAndDocumentType(templateId, 1);
    }

    @Override
    public Integer removeShopPrinterTemplateDocumentByPrimaryId(Integer id) {
        return printerTemplateDocumentMapper.updateShopPrinterTemplateDocumentStatusByPrimaryId(id);
    }

    @Override
    public List<PrinterTemplateDocumentDO> listPrinterTemplateDocumentByShopIdAndDocumentType(Integer shopId, Integer documentType) {
        return printerTemplateDocumentMapper.selectPrinterTemplateDocumentByShopIdAndDocumentType(shopId, documentType);
    }
}

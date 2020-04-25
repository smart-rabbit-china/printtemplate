package com.zxcs.printtemplate.api;

import com.alibaba.fastjson.JSON;
import com.zxcs.printtemplate.model.PrinterTemplateDocumentDO;
import com.zxcs.printtemplate.service.IPrinterTemplateDocumentService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class IScOperationPrinterTemplateDocumentServiceTest {

    @Autowired
    private IPrinterTemplateDocumentService scOperationPrinterTemplateDocumentService;

    @Test
    public void saveShopPrinterTemplateDocument() {
        PrinterTemplateDocumentDO printerTemplateDocument = new PrinterTemplateDocumentDO();
        printerTemplateDocument.setName("自定义模板");
        printerTemplateDocument.setDocumentType(1);
        printerTemplateDocument.setUrl("");
        printerTemplateDocument.setStatus(2);
        printerTemplateDocument.setShopId(288);
        printerTemplateDocument.setCreatorId(1);
        printerTemplateDocument.setCreatorName("dazuo");
        printerTemplateDocument.setCreateTime(new Date());
        Integer integer = scOperationPrinterTemplateDocumentService.saveShopPrinterTemplateDocument(printerTemplateDocument);
        System.out.println("id: " + integer);
    }

    @Test
    public void getShopPrinterTemplateDocumentByPrimaryId() {
        PrinterTemplateDocumentDO templateDocument = scOperationPrinterTemplateDocumentService.getShopPrinterTemplateDocumentByPrimaryId(1);
        Assert.assertEquals(templateDocument.getName(), "系统模板-结账单");
    }

    @Test
    public void updateShopPrinterTemplateDocumentByPrimaryId() {
    }

    @Test
    public void listPrinterTemplateDocumentByShopIdAndDocumentType() {
        List<PrinterTemplateDocumentDO> scShopPrinterTemplateDocuments = scOperationPrinterTemplateDocumentService.listPrinterTemplateDocumentByShopIdAndDocumentType(0, 1);
        System.out.println("scShopPrinterTemplateDocuments: " + JSON.toJSON(scShopPrinterTemplateDocuments));
    }

}
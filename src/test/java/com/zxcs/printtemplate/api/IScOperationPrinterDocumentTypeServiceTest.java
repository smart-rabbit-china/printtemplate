package com.zxcs.printtemplate.api;

import com.zxcs.printtemplate.model.PrinterDocumentTypeDO;
import com.zxcs.printtemplate.service.impl.PrinterDocumentTypeServiceImpl;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class IScOperationPrinterDocumentTypeServiceTest {

    @Autowired
    private PrinterDocumentTypeServiceImpl scOperationPrinterDocumentTypeService;

    @Test
    public void getPrinterDocumentTypeByPrimaryId() {

    }

    @Test
    public void listPrinterDocumentType() {
        List<PrinterDocumentTypeDO> typeList = scOperationPrinterDocumentTypeService.listPrinterDocumentType();
        Assert.assertEquals(typeList.size(), 6);
    }

    @Test
    public void updatePrinterDocumentType() {
    }
}
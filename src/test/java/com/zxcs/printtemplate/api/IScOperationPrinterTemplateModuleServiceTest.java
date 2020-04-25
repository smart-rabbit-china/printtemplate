package com.zxcs.printtemplate.api;

import com.zxcs.printtemplate.model.PrinterTemplateModuleDO;
import com.zxcs.printtemplate.service.impl.PrinterTemplateModuleServiceImpl;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class IScOperationPrinterTemplateModuleServiceTest {

    @Autowired
    private PrinterTemplateModuleServiceImpl scOperationPrinterTemplateModuleService;

    @Test
    public void listPrinterTemplateModuleByDocumentId() {
        List<PrinterTemplateModuleDO> moduleList = scOperationPrinterTemplateModuleService.listPrinterTemplateModuleByDocumentId(1);
        Assert.assertEquals(moduleList.size(), 8);
    }
}
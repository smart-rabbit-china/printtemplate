package com.zxcs.printtemplate.api;

import com.zxcs.printtemplate.model.PrinterKitchenTableRulesDO;
import com.zxcs.printtemplate.service.IPrinterKitchenTableRulesService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class IScOperationPrinterKitchenTableRulesServiceTest {

    @Autowired
    private IPrinterKitchenTableRulesService scOperationPrinterKitchenTableRulesService;

    @Transactional
    @Test
    public void save() {
        PrinterKitchenTableRulesDO scShopPrinterKitchenTableRules = new PrinterKitchenTableRulesDO();
        scShopPrinterKitchenTableRules.setPrinterKitchenId(1);
        scShopPrinterKitchenTableRules.setTableId(1);
        scShopPrinterKitchenTableRules.setDelete(0);
        Integer affected = scOperationPrinterKitchenTableRulesService.save(scShopPrinterKitchenTableRules);
        Assert.assertTrue(affected > 0);
    }

    @Transactional
    @Test
    public void saveMultipleRecord() {
        List<PrinterKitchenTableRulesDO> kitchenTableRulesList = new ArrayList<>(10);
        for (int i = 0; i < 5; i++) {
            PrinterKitchenTableRulesDO scShopPrinterKitchenTableRules = new PrinterKitchenTableRulesDO();
            scShopPrinterKitchenTableRules.setPrinterKitchenId(i);
            scShopPrinterKitchenTableRules.setTableId(1);
            scShopPrinterKitchenTableRules.setDelete(0);
            kitchenTableRulesList.add(scShopPrinterKitchenTableRules);
        }
        Integer integer = scOperationPrinterKitchenTableRulesService.saveMultipleRecord(kitchenTableRulesList);
        Assert.assertEquals(integer.longValue(), 5);
    }

    @Test
    public void listPrinterKitchenTableRulesByPrinterKitchenId() {
        List<PrinterKitchenTableRulesDO> kitchenTableRulesList = scOperationPrinterKitchenTableRulesService.listPrinterKitchenTableRulesByPrinterKitchenId(1);
        Assert.assertEquals(kitchenTableRulesList.size(), 2);
    }

    @Test
    public void getByPrimaryKey() {
        PrinterKitchenTableRulesDO kitchenTableRules = scOperationPrinterKitchenTableRulesService.getByPrimaryKey(2);
        Assert.assertEquals(kitchenTableRules.getId().longValue(), 2);
    }

    @Transactional
    @Test
    public void updateByPrimaryKeySelective() {
        PrinterKitchenTableRulesDO kitchenTableRules = scOperationPrinterKitchenTableRulesService.getByPrimaryKey(2);
        kitchenTableRules.setPrinterKitchenId(3);
        Integer integer = scOperationPrinterKitchenTableRulesService.updateByPrimaryKeySelective(kitchenTableRules);
        Assert.assertTrue(integer > 0);
    }

    @Transactional
    @Test
    public void removeMultipleRecordByPrinterKitchenId() {
        Integer integer = scOperationPrinterKitchenTableRulesService.removeMultipleRecordByPrinterKitchenId(3);
        Assert.assertEquals(integer.longValue(), 2);
    }
}
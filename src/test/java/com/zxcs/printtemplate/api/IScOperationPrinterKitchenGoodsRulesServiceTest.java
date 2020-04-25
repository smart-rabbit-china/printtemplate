package com.zxcs.printtemplate.api;

import com.zxcs.printtemplate.model.PrinterKitchenGoodsRulesDO;
import com.zxcs.printtemplate.service.IPrinterKitchenGoodsRulesService;
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
public class IScOperationPrinterKitchenGoodsRulesServiceTest {

    @Autowired
    private IPrinterKitchenGoodsRulesService scOperationPrinterKitchenGoodsRulesService;

    @Transactional
    @Test
    public void save() {
        PrinterKitchenGoodsRulesDO printerKitchenGoodsRules = new PrinterKitchenGoodsRulesDO();
        printerKitchenGoodsRules.setPrinterKitchenId(1);
        printerKitchenGoodsRules.setGoodsId(1);
        printerKitchenGoodsRules.setStockId(1);
        printerKitchenGoodsRules.setDelete(0);
        Integer id = scOperationPrinterKitchenGoodsRulesService.save(printerKitchenGoodsRules);
        Assert.assertTrue(id > 0);
    }

    @Transactional
    @Test
    public void saveMultipleRecord() {
        List<PrinterKitchenGoodsRulesDO> printerKitchenGoodsRulesList = new ArrayList<>(10);
        for (int i = 0; i < 5; i++) {
            PrinterKitchenGoodsRulesDO printerKitchenGoodsRules = new PrinterKitchenGoodsRulesDO();
            printerKitchenGoodsRules.setPrinterKitchenId(i);
            printerKitchenGoodsRules.setGoodsId(i);
            printerKitchenGoodsRules.setStockId(i);
            printerKitchenGoodsRules.setDelete(0);
            printerKitchenGoodsRulesList.add(printerKitchenGoodsRules);
        }
        Integer integer = scOperationPrinterKitchenGoodsRulesService.saveMultipleRecord(printerKitchenGoodsRulesList);
        Assert.assertEquals(integer.longValue(), 5);
    }

    @Test
    public void listPrinterKitchenGoodsRulesByPrinterKitchenId() {
        List<PrinterKitchenGoodsRulesDO> printerKitchenGoodsRulesList = scOperationPrinterKitchenGoodsRulesService.listPrinterKitchenGoodsRulesByPrinterKitchenId(1);
        Assert.assertEquals(printerKitchenGoodsRulesList.size(), 2);
    }

    @Test
    public void getByPrimaryKey() {
        PrinterKitchenGoodsRulesDO kitchenGoodsRules = scOperationPrinterKitchenGoodsRulesService.getByPrimaryKey(2);
        Assert.assertEquals(kitchenGoodsRules.getId().longValue(), 2);
    }

    @Transactional
    @Test
    public void updateByPrimaryKeySelective() {
        PrinterKitchenGoodsRulesDO kitchenGoodsRules = scOperationPrinterKitchenGoodsRulesService.getByPrimaryKey(2);
        kitchenGoodsRules.setGoodsId(2);
        Integer integer = scOperationPrinterKitchenGoodsRulesService.updateByPrimaryKeySelective(kitchenGoodsRules);
        Assert.assertTrue(integer > 0);
    }

    @Transactional
    @Test
    public void removeMultipleRecordByPrinterKitchenId() {
        Integer integer = scOperationPrinterKitchenGoodsRulesService.removeMultipleRecordByPrinterKitchenId(1);
        Assert.assertEquals(integer.longValue(), 2);
    }
}
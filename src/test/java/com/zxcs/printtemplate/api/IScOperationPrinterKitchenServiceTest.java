package com.zxcs.printtemplate.api;

import com.github.pagehelper.PageInfo;
import com.zxcs.printtemplate.model.PrinterKitchenDO;
import com.zxcs.printtemplate.service.IPrinterKitchenService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringRunner.class)
@SpringBootTest
public class IScOperationPrinterKitchenServiceTest {

    @Autowired
    private IPrinterKitchenService scOperationPrinterKitchenService;

    @Transactional
    @Test
    public void save() {
        PrinterKitchenDO printerKitchen = new PrinterKitchenDO();
        printerKitchen.setName("一号口");
        printerKitchen.setPrinterDeviceId(1);
        printerKitchen.setTable(0);
        printerKitchen.setGoods(0);
        printerKitchen.setDelete(0);
        printerKitchen.setShopId(288);
        printerKitchen.setCreatorId(1);
        printerKitchen.setCreatorName("dazuo");
        printerKitchen.setUpdatorId(1);
        printerKitchen.setUpdatorName("dazuo");
        Integer id = scOperationPrinterKitchenService.save(printerKitchen);
        Assert.assertTrue(id > 0);
    }

    @Test
    public void getByPrimaryKey() {
        PrinterKitchenDO printerKitchen = scOperationPrinterKitchenService.getByPrimaryKey(1);
        Assert.assertEquals(printerKitchen.getId().longValue(), 1);
    }

    @Test
    public void listPrinterKitchenByShopId() {
        PageInfo<PrinterKitchenDO> printerKitchenPageInfo = scOperationPrinterKitchenService.listPrinterKitchenByShopId(288, 2, 1);
        Assert.assertEquals(printerKitchenPageInfo.getList().size(), 1);
        Assert.assertEquals(printerKitchenPageInfo.getList().get(0).getId().longValue(), 2);
    }

    @Transactional
    @Test
    public void updateByPrimaryKeySelective() {
        PrinterKitchenDO printerKitchen = scOperationPrinterKitchenService.getByPrimaryKey(1);
        printerKitchen.setGoods(1);
        Integer integer = scOperationPrinterKitchenService.updateByPrimaryKeySelective(printerKitchen);
        Assert.assertTrue(integer > 0);
    }
}
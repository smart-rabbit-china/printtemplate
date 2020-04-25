package com.zxcs.printtemplate.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zxcs.printtemplate.dao.PrinterKitchenMapper;
import com.zxcs.printtemplate.model.PrinterKitchenDO;
import com.zxcs.printtemplate.service.IPrinterKitchenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 出票口相关Service实现类
 * Created by zfh on 2019/01/09
 */
@Service("printerKitchenService")
public class PrinterKitchenServiceImpl implements IPrinterKitchenService {

    @Autowired
    private PrinterKitchenMapper printerKitchenMapper;

    @Override
    public Integer save(PrinterKitchenDO record) {
        printerKitchenMapper.insert(record);
        return record.getId();
    }

    @Override
    public PrinterKitchenDO getByPrimaryKey(Integer id) {
        return printerKitchenMapper.selectByPrimaryKey(id);
    }

    @Override
    public PageInfo<PrinterKitchenDO> listPrinterKitchenByShopId(Integer shopId, Integer page, Integer rows) {
        PageHelper.startPage(page, rows);
        List<PrinterKitchenDO> kitchenList = printerKitchenMapper.selectPrinterKitchenListByShopId(shopId);
        return new PageInfo<>(kitchenList);
    }

    @Override
    public Integer updateByPrimaryKeySelective(PrinterKitchenDO record) {
        return printerKitchenMapper.updateByPrimaryKeySelective(record);
    }
}

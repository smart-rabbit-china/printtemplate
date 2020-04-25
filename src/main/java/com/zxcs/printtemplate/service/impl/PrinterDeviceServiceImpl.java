package com.zxcs.printtemplate.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zxcs.printtemplate.dao.PrinterDeviceMapper;
import com.zxcs.printtemplate.model.PrinterDeviceDO;
import com.zxcs.printtemplate.service.IPrinterDeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 打印机相关Serice实现类
 * Created by zfh on 2019/01/09
 */
@Service("printerDeviceService")
public class PrinterDeviceServiceImpl implements IPrinterDeviceService {

    @Autowired
    private PrinterDeviceMapper printerDeviceMapper;

    @Override
    public Integer save(PrinterDeviceDO record) {
        printerDeviceMapper.insert(record);
        return record.getId();
    }

    @Override
    public PrinterDeviceDO getScShopPrinterDeviceByPrimaryKey(Integer id) {
        return printerDeviceMapper.selectByPrimaryKey(id);
    }

    @Override
    public PageInfo<PrinterDeviceDO> listPrinterDeviceByShopId(Integer shopId, Integer page, Integer rows) {
        PageHelper.startPage(page, rows);
        List<PrinterDeviceDO> printerDeviceList = printerDeviceMapper.selectPrinterDeviceListByShopId(shopId);
        return new PageInfo<>(printerDeviceList);
    }

    @Override
    public Integer updateByPrimaryKeySelective(PrinterDeviceDO record) {
        return printerDeviceMapper.updateByPrimaryKeySelective(record);
    }
}

package com.zxcs.printtemplate.service;

import com.github.pagehelper.PageInfo;
import com.zxcs.printtemplate.model.PrinterDeviceDO;

/**
 * 打印机相关Service
 * Created by zfh on 2019/01/09
 */
public interface IPrinterDeviceService {

    /**
     * 新增记录
     * @param record {@link PrinterDeviceDO}
     * @return 自增主键
     */
    Integer save(PrinterDeviceDO record);

    /**
     * 根据主键查询记录
     * @param id 主键
     * @return {@link PrinterDeviceDO}
     */
    PrinterDeviceDO getScShopPrinterDeviceByPrimaryKey(Integer id);

    /**
     * 查询店铺下所有的打印机（未删除）
     * @param shopId 店铺id
     * @param page   页码
     * @param rows   页条数
     * @return {@link PageInfo}
     */
    PageInfo<PrinterDeviceDO> listPrinterDeviceByShopId(Integer shopId, Integer page, Integer rows);

    /**
     * 更新记录
     * @param record {@link PrinterDeviceDO}
     * @return 受影响的条数
     */
    Integer updateByPrimaryKeySelective(PrinterDeviceDO record);
}

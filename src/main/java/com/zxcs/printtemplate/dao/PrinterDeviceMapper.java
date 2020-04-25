package com.zxcs.printtemplate.dao;

import com.zxcs.printtemplate.model.PrinterDeviceDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 打印机相关的Mapper
 * Created by zfh on 2019/1/9
 */
@Mapper
public interface PrinterDeviceMapper {

    /**
     * 新增记录
     * @param record {@link PrinterDeviceDO}
     * @return 自增主键
     */
    Integer insert(PrinterDeviceDO record);

    /**
     * 根据主键查询记录
     * @param id 主键
     * @return {@link PrinterDeviceDO}
     */
    PrinterDeviceDO selectByPrimaryKey(Integer id);

    /**
     * 查询店铺下所有的打印机（未删除）
     * @param shopId 店铺id
     * @return list
     */
    List<PrinterDeviceDO> selectPrinterDeviceListByShopId(Integer shopId);

    /**
     * 更新记录
     * @param record {@link PrinterDeviceDO}
     * @return 受影响的条数
     */
    Integer updateByPrimaryKeySelective(PrinterDeviceDO record);
}
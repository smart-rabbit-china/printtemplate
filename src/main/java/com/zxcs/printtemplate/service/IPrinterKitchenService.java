package com.zxcs.printtemplate.service;

import com.github.pagehelper.PageInfo;
import com.zxcs.printtemplate.model.PrinterKitchenDO;

/**
 * 出票口相关Service
 * Created by zfh on 2019/01/09
 */
public interface IPrinterKitchenService {

    /**
     * 添加记录
     * @param record {@link PrinterKitchenDO}
     * @return 自增主键
     */
    Integer save(PrinterKitchenDO record);

    /**
     * 根据主键查询
     * @param id 主键
     * @return {@link PrinterKitchenDO}
     */
    PrinterKitchenDO getByPrimaryKey(Integer id);

    /**
     * 查询店铺下所有的出票口（未删除）
     * @param shopId 店铺id
     * @param page   页码
     * @param rows   页条数
     * @return {@link PageInfo}
     */
    PageInfo<PrinterKitchenDO> listPrinterKitchenByShopId (Integer shopId, Integer page, Integer rows);

    /**
     * 根据主键有选择性的更新
     * @param record {@link PrinterKitchenDO}
     * @return 受影响的条数
     */
    Integer updateByPrimaryKeySelective(PrinterKitchenDO record);
}

package com.zxcs.printtemplate.dao;

import com.zxcs.printtemplate.model.PrinterKitchenDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 出票口相关Mapper
 * Created by zfh on 2019/1/9
 */
@Mapper
public interface PrinterKitchenMapper {

    /**
     * 添加记录
     * @param record {@link PrinterKitchenDO}
     * @return 自增主键
     */
    Integer insert(PrinterKitchenDO record);

    /**
     * 根据主键查询
     * @param id 主键
     * @return {@link PrinterKitchenDO}
     */
    PrinterKitchenDO selectByPrimaryKey(Integer id);

    /**
     * 查询店铺下所有的出票口（未删除）
     * @param shopId 店铺id
     * @return list
     */
    List<PrinterKitchenDO> selectPrinterKitchenListByShopId (Integer shopId);

    /**
     * 根据主键有选择性的更新
     * @param record {@link PrinterKitchenDO}
     * @return 受影响的条数
     */
    Integer updateByPrimaryKeySelective(PrinterKitchenDO record);
}
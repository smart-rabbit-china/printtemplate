package com.zxcs.printtemplate.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 出票口配置打印菜品 实体
 * Created by zfh on 2019/1/8
 */
@Data
@ToString
public class PrinterKitchenGoodsRulesDO implements Serializable {

    private static final long serialVersionUID = -3530065658560092393L;

    /**
     * 主键
     */
    private Integer id;

    /**
     * 出票口id
     */
    private Integer printerKitchenId;

    /**
     * 商品id
     */
    private Integer goodsId;

    /**
     * 商品规格
     */
    private Integer stockId;

    /**
     * 是否删除：0-未删除 1-删除
     */
    private Integer delete;

    /**
     * 添加时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;
}
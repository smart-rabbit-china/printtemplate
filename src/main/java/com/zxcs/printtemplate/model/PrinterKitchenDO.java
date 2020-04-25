package com.zxcs.printtemplate.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 出票口 实体
 * Created by zfh on 2019/1/8
 */
@Data
@ToString
public class PrinterKitchenDO implements Serializable {

    private static final long serialVersionUID = 4609560622003259131L;

    /**
     * 主键
     */
    private Integer id;

    /**
     * 出票口名称
     */
    private String name;

    /**
     * 打印机id
     */
    private Integer printerDeviceId;

    /**
     * 是否配置桌台区域：0-未配置 1-配置
     */
    private Integer table;

    /**
     * 是否配置打印的菜品：0-未配置 1-配置
     */
    private Integer goods;

    /**
     * 是否删除：0-未删除 1-删除
     */
    private Integer delete;

    /**
     * 店铺id
     */
    private Integer shopId;

    /**
     * 创建人
     */
    private Integer creatorId;

    /**
     * 创建人姓名
     */
    private String creatorName;

    /**
     * 更新人
     */
    private Integer updatorId;

    /**
     * 更新人姓名
     */
    private String updatorName;

    /**
     * 添加时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;
}
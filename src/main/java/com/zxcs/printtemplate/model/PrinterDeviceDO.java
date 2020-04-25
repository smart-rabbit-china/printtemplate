package com.zxcs.printtemplate.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 打印机 实体
 * Created by zfh on 2019/1/8
 */
@Data
@ToString
public class PrinterDeviceDO implements Serializable {

    private static final long serialVersionUID = 3784955434189951427L;

    /**
     * 主键
     */
    private Integer id;

    /**
     * 名称
     */
    private String deviceName;

    /**
     * 打印机类型：1-服务器 2-网络打印机
     */
    private Integer printerDeviceType;

    /**
     * ip地址
     */
    private String address;

    /**
     * 是否删除：0-未删除 1-已删除
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
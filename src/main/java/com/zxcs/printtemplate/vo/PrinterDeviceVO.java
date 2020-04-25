package com.zxcs.printtemplate.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.ToString;

import java.util.Date;

/**
 * 打印机详情VO
 * Created by zfh on 2019/01/09
 */
@Data
@ToString
public class PrinterDeviceVO {

    /**
     * 主键
     */
    private Integer id;

    /**
     * 名称
     */
    private String deviceName;

    /**
     * 打印机类型
     */
    private Integer printerDeviceType;

    /**
     * ip地址
     */
    private String address;

    /**
     * 创建人姓名
     */
    private String creatorName;

    /**
     * 更新人姓名
     */
    private String updatorName;

    /**
     * 添加时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;
}

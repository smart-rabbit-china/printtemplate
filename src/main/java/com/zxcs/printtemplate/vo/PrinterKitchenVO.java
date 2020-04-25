package com.zxcs.printtemplate.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.ToString;

import java.util.Date;

/**
 * 出票口视图对象
 * Created by zfh on 2019/01/09
 */
@Data
@ToString
public class PrinterKitchenVO {

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

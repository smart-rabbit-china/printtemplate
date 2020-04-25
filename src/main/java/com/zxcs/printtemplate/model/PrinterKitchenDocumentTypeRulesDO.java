package com.zxcs.printtemplate.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 出票口-票据类型规则 实体
 * Created by zfh on 2019/1/8
 */
@Data
@ToString
public class PrinterKitchenDocumentTypeRulesDO implements Serializable {

    private static final long serialVersionUID = -5920364244309155023L;

    /**
     * 主键
     */
    private Integer id;

    /**
     * 出票口id
     */
    private Integer printerKitchenId;

    /**
     * 票据类型id
     */
    private Integer documentTypeId;

    /**
     * 打印的份数
     */
    private Integer number;

    /**
     * 打印方式：1-一纸多菜 2-一纸一菜 3-各打一张
     */
    private Integer printerType;

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
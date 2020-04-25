package com.zxcs.printtemplate.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 打印文档类型 实体
 * Created by zfh on 2018/12/11
 */
@Data
@ToString
public class PrinterDocumentTypeDO implements Serializable {

    private static final long serialVersionUID = 2779853373257838652L;

    /**
     * 主键
     */
    private Integer id;

    /**
     * 类型名称
     */
    private String name;

    /**
     * 状态：0-禁用 1-启用
     */
    private Integer status;

    /**
     * 添加时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;
}

package com.zxcs.printtemplate.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 打印模板-模块实体
 * Created by zfh on 2018/12/12
 */
@Data
@ToString
public class PrinterTemplateModuleDO implements Serializable {

    private static final long serialVersionUID = 8485241363055149502L;

    /**
     * 主键
     */
    private Integer id;

    /**
     * 模块名称
     */
    private String moduleName;

    /**
     * 模块描述
     */
    private String moduleDescribe;

    /**
     * 文档类型
     */
    private Integer documentType;

    /**
     * 模块排序
     */
    private Integer sort;

    /**
     * 添加时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;
}

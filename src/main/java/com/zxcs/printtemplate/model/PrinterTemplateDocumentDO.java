package com.zxcs.printtemplate.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 打印模板-文档表
 * Created by zfh on 2018/12/12
 */
@Data
@ToString
public class PrinterTemplateDocumentDO implements Serializable {

    private static final long serialVersionUID = 5061220291589710884L;

    /**
     * 主键
     */
    private Integer id;

    /**
     * 模板文档名称
     */
    private String name;

    /**
     * 文档类型
     */
    private Integer documentType;

    /**
     * 模板预览图
     */
    private String url;

    /**
     * 模板状态：0-删除 1-启用 2-禁用
     */
    private Integer status;

    /**
     * 店铺id
     */
    private Integer shopId;

    /**
     * 创建者id
     */
    private Integer creatorId;

    /**
     * 创建者姓名
     */
    private String creatorName;

    /**
     * 添加时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;
}

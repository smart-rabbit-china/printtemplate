package com.zxcs.printtemplate.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 打印模板-系统组件 实体
 * Created by zfh on 2018/12/27
 */
@Data
@ToString
public class PrinterSystemComponentDO implements Serializable {

    private static final long serialVersionUID = -8209780276534664188L;

    /**
     * 主键
     */
    private Integer id;

    /**
     * 模块id
     */
    private Integer moduleId;

    /**
     * 父组件id
     */
    private Integer parentId;

    /**
     * 引用id
     */
    private Integer refId;

    /**
     * 组件名称
     */
    private String label;

    /**
     * 组件值
     */
    private String value;

    /**
     * 组件样式
     */
    private String valueStyle;

    /**
     * 占位符
     */
    private String placeholder;

    /**
     * 组件类型
     */
    private String type;

    /**
     * 行号
     */
    private Integer row;

    /**
     * 列号
     */
    private Integer column;

    /**
     * 宽度，百分比
     */
    private Integer width;

    /**
     * 序号
     */
    private Integer sort;

    /**
     * 启用状态：0 未启用 1已启用
     */
    private Integer enable;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;
}

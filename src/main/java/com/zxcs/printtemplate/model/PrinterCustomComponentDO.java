package com.zxcs.printtemplate.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 打印模板-自定义模板组件 实体
 * Created by zfh on 2018/12/27
 */
@Data
@ToString
public class PrinterCustomComponentDO implements Serializable {

    private static final long serialVersionUID = -5596577451287093325L;

    /**
     * 主键
     */
    private Integer id;

    /**
     * 模板id
     */
    private Integer documentTemplateId;

    /**
     * 系统组件id
     */
    private Integer systemComponentId;

    /**
     * 自定义组件样式
     */
    private String valueStyle;

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
     * 是否删除：0-未删除 1-删除
     */
    private Integer delete;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;
}

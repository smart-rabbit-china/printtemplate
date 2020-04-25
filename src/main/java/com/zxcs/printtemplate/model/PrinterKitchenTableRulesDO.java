package com.zxcs.printtemplate.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;
/**
 * 出票口配置打印菜品 实体
 * Created by zfh on 2019/1/9
 */
@Data
@ToString
public class PrinterKitchenTableRulesDO implements Serializable {

    private static final long serialVersionUID = -8771246143755692032L;

    /**
     * 主键
     */
    private Integer id;

    /**
     * 出票口
     */
    private Integer printerKitchenId;

    /**
     * 桌台号
     */
    private Integer tableId;

    /**
     * 是否删除
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
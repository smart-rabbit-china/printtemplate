package com.zxcs.printtemplate.vo;

import lombok.Data;
import lombok.ToString;

import java.util.List;

/**
 * 出票口详情视图
 * Created by zfh on 2019/01/09
 */
@Data
@ToString
public class PrinterKitchenIntegrationVO {

    /**
     * 出票口ID
     */
    private Integer id;

    /**
     * 出票口名称
     */
    private String name;

    /**
     * 打印机ID
     */
    private Integer printerDeviceId;

    /**
     * 店铺ID
     */
    private Integer shopId;

    /**
     * 出票口票据类型
     */
    private List documentTypeRules;

    /**
     * 是否配置桌台区域：0-未配置 1-配置
     */
    private Integer table;

    /**
     * 是否配置打印的菜品：0-未配置 1-配置
     */
    private Integer goods;

    /**
     * 出票口桌台区域
     */
    private List tableRules;

    /**
     * 出票口配置的商品
     */
    private List goodsRules;
}

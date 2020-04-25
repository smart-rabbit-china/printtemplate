package com.zxcs.printtemplate.form;

import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotNull;

/**
 * 打印菜品
 * <p>
 * Created by zfh on 2020/04/24
 */
@Data
@ToString
public class PrinterKitchenGoodsRule extends BaseForm {

    /**
     * 商品ID
     */
    @NotNull(message = "缺少goodsId")
    private Integer goodsId;

    /**
     * 商品规格
     */
    @NotNull(message = "缺少stockId")
    private Integer stockId;
}

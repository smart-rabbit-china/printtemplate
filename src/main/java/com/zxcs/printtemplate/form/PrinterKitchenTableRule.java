package com.zxcs.printtemplate.form;

import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotNull;

/**
 * 出票口桌台区域
 * <p>
 * Created by zfh on 2020/04/24
 */
@Data
@ToString
public class PrinterKitchenTableRule extends BaseForm {

    /**
     * 桌台号
     */
    @NotNull(message = "缺少tableId")
    private Integer tableId;
}

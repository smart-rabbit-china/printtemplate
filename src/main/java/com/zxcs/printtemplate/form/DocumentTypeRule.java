package com.zxcs.printtemplate.form;

import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotNull;

/**
 * 出票口票据类型
 * <p>
 * Created by zfh on 2020/04/24
 */
@Data
@ToString
public class DocumentTypeRule extends BaseForm {

    /**
     * 票据类型ID
     */
    @NotNull(message = "缺少documentTypeId")
    private Integer documentTypeId;

    /**
     * 打印份数
     */
    @NotNull(message = "缺少number")
    private Integer number;

    /**
     * 打印方式：1-一纸多菜 2-一纸一菜 3-各打一张
     */
    @NotNull(message = "缺少printerType")
    private Integer printerType;
}

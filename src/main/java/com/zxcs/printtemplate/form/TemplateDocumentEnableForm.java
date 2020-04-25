package com.zxcs.printtemplate.form;

import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotNull;

/**
 * 应用模板 请求对象
 * <p>
 * Created by zfh on 2020/04/25
 */
@Data
@ToString
public class TemplateDocumentEnableForm extends BaseForm {

    /**
     * 店铺ID
     */
    @NotNull(message = "缺少shopId")
    private Integer shopId;

    /**
     * 模板ID
     */
    @NotNull(message = "缺少templateId")
    private Integer templateId;
}

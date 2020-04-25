package com.zxcs.printtemplate.form;

import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 * 更新模板请求对象
 * Created by zfh on 2019/01/04
 */
@Data
@ToString
public class UpdateCustomTemplateDocumentForm extends BaseForm {

    /**
     * 店铺id
     */
    @NotNull(message = "缺少shopId")
    private Integer shopId;

    /**
     * 模板名称
     */
    @NotEmpty(message = "缺少name")
    private String name;

    /**
     * 模板id
     */
    @NotNull(message = "缺少templateId")
    private Integer templateId;

    /**
     * 票据预览图
     */
    @NotEmpty(message = "缺少url")
    private String url;

    /**
     * 模板-模块
     */
    @NotEmpty(message = "缺少modules")
    private String modules;
}

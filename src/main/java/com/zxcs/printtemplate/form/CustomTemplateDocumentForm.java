package com.zxcs.printtemplate.form;

import com.zxcs.printtemplate.model.PrinterTemplateDocumentDO;
import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 * 添加模板请求对象
 * Created by zfh on 2019/01/04
 */
@Data
@ToString
public class CustomTemplateDocumentForm extends BaseForm{

    /**
     * 店铺id
     */
    @NotNull(message = "缺少shopId")
    private Integer shopId;

    /**
     * 操作员id
     */
    @NotNull(message = "缺少operatorId")
    private Integer operatorId;

    /**
     * 模板名称
     */
    @NotEmpty(message = "缺少name")
    private String name;

    /**
     * 文档类型
     */
    @NotNull(message = "缺少documentType")
    private Integer documentType;

    /**
     * 票据预览图
     */
    @NotNull(message = "缺少url")
    private String url;

    /**
     * 模板-模块
     */
    @NotEmpty(message = "缺少modules")
    private String modules;

    /**
     * 入参对象转换为实体对象
     * @return {@link PrinterTemplateDocumentDO}
     */
    public PrinterTemplateDocumentDO convertToScShopPrinterTemplateDocument () {
        PrinterTemplateDocumentDO templateDocument = new PrinterTemplateDocumentDO();
        templateDocument.setName(name);
        templateDocument.setDocumentType(documentType);
        templateDocument.setUrl(url);
        // 默认状态：1-启用 2-禁用
        templateDocument.setStatus(2);
        templateDocument.setShopId(shopId);
        templateDocument.setCreatorId(operatorId);
        templateDocument.setCreatorName("");
        return templateDocument;
    }
}

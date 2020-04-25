package com.zxcs.printtemplate.vo;

import lombok.Data;
import lombok.ToString;

import java.util.List;

/**
 * 打印模板列表 视图VO
 * Created by zfh on 2018/12/27
 */
@Data
@ToString
public class PrinterTemplateDocumentVO {

    /**
     * 模板id
     */
    private Integer id;

    /**
     * 模板类型
     */
    private Integer documentType;

    /**
     * 模板名称
     */
    private String name;

    /**
     * 模板状态：1-启用 2-禁用
     */
    private Integer status;

    /**
     * 模板默认表示 0-否 1-是
     */
    private Integer defaultTemplet;

    /**
     * 票据预览图
     */
    private String url;
}

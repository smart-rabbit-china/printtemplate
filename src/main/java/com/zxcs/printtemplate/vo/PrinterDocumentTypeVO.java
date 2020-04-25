package com.zxcs.printtemplate.vo;

import lombok.Data;
import lombok.ToString;

/**
 * 打印文档类型 视图VO
 * Created by zfh on 2018/12/12
 */
@Data
@ToString
public class PrinterDocumentTypeVO {

    /**
     * 类型ID
     */
    private Integer id;

    /**
     * 类型名称
     */
    private String name;
}

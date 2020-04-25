package com.zxcs.printtemplate.exception.print;

import com.zxcs.printtemplate.exception.BaseException;

/**
 * 模板-文档异常
 * <p>
 * Created by zfh on 2020/04/24
 */
public class PrinterTemplateDocumentException extends BaseException {

    public PrinterTemplateDocumentException() {
        super("00003", "文档不存在");
    }

    public PrinterTemplateDocumentException(String errMsg) {
        super("00003", errMsg);
    }
}

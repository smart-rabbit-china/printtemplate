package com.zxcs.printtemplate.exception.print;

import com.zxcs.printtemplate.exception.BaseException;

/**
 * 出票口异常
 * <p>
 * Created by zfh on 2020/04/24
 */
public class PrinterKitchenException extends BaseException {

    public PrinterKitchenException() {
        super("00002", "出票口不存在！");
    }

    public PrinterKitchenException(String errMsg) {
        super("00002", errMsg);
    }
}

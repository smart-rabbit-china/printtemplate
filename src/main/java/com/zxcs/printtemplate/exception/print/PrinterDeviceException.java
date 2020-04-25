package com.zxcs.printtemplate.exception.print;

import com.zxcs.printtemplate.exception.BaseException;

/**
 * 打印机异常
 * <p>
 * Created by zfh on 2020/04/23
 */
public class PrinterDeviceException extends BaseException {

    public PrinterDeviceException() {
        super("00001", "打印机不存在！");
    }
}

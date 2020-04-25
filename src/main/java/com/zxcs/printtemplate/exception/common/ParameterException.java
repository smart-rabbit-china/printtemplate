package com.zxcs.printtemplate.exception.common;

import com.zxcs.printtemplate.exception.BaseException;

/**
 * 参数异常
 * Created by zfh on 2018/12/28
 */
public class ParameterException extends BaseException {

    private static final long serialVersionUID = 4118870983589945134L;

    public ParameterException() {
        super("00001", "缺少参数！");
    }

    public ParameterException(String errMessage) {
        super("00001", errMessage);
    }
}

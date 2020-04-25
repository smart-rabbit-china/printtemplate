package com.zxcs.printtemplate.exception.common;

import com.zxcs.printtemplate.exception.BaseException;

/**
 * 参数错误异常
 * Created by zfh on 2018/12/28
 */
public class ParamterErrorException extends BaseException {

    private static final long serialVersionUID = 5653210212160051562L;

    public ParamterErrorException() {
        super("00002", "参数错误！");
    }
}

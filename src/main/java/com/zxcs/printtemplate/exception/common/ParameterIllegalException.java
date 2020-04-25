package com.zxcs.printtemplate.exception.common;

import com.zxcs.printtemplate.exception.BaseException;

/**
 * 非法参数异常
 * <p>
 * Created by zfh on 2019/05/15
 */
public class ParameterIllegalException extends BaseException {

    private static final long serialVersionUID = -8642079556184469474L;

    public ParameterIllegalException() {
        super("00001", "非法参数！");
    }
}

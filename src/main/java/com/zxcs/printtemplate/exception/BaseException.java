package com.zxcs.printtemplate.exception;

/**
 * 统一异常处理，异常基类
 * Created by zfh on 2018/12/28
 */
public class BaseException extends RuntimeException {

    private static final long serialVersionUID = -8720779928866878060L;

    private String errCode;

    private String errMessage;

    public BaseException (String errCode, String errMessage) {
        super(errMessage);
        this.errCode = errCode;
        this.errMessage = errMessage;
    }

    public String getErrCode() {
        return errCode;
    }

    public void setErrCode(String errCode) {
        this.errCode = errCode;
    }

    public String getErrMessage() {
        return errMessage;
    }

    public void setErrMessage(String errMessage) {
        this.errMessage = errMessage;
    }
}

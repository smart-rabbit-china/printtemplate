package com.zxcs.printtemplate.exception;

import com.alibaba.fastjson.JSONException;
import com.zxcs.printtemplate.vo.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * 全局异常处理
 * Created by zfh on 2018/09/14
 */
@ControllerAdvice
public class GlobalExceptionHandler {

    private static final Logger logger = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    @ExceptionHandler(Exception.class)
    public ResponseEntity<Response> handlerException(Exception e) {
        logger.warn("【全局异常处理】errMessage = {}", e.getMessage(), e);
        Response result = new Response();
        if (e instanceof BaseException) {
            result.setErrMsg(((BaseException) e).getErrMessage());
            result.setErrCode(((BaseException) e).getErrCode());
            return new ResponseEntity<>(result, HttpStatus.OK);
        } else {
            result.setErrMsg("Sorry，server mistake");
            return new ResponseEntity<>(result, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @ExceptionHandler(JSONException.class)
    public ResponseEntity<Response> handlerJSONException (JSONException e) {
        logger.warn("【全局异常处理】参数解析异常！", e);
        Response response = Response.newInstance().setErrCode("00001").setErrMsg("参数无法解析");
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}

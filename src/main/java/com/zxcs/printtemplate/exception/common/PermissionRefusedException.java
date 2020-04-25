package com.zxcs.printtemplate.exception.common;

import com.zxcs.printtemplate.exception.BaseException;

/**
 * 权限拒绝异常
 * <p>
 * Created by zfh on 2020/01/13
 */
public class PermissionRefusedException extends BaseException {

    private static final long serialVersionUID = 4484282829789560446L;

    public PermissionRefusedException() {
        super("100018", "权限拒绝！");
    }

    public PermissionRefusedException (String errMsg) {
        super("100018", errMsg);
    }
}

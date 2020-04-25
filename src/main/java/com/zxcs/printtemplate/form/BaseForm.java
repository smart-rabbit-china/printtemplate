package com.zxcs.printtemplate.form;


import com.zxcs.printtemplate.exception.common.ParameterException;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.util.Iterator;
import java.util.Set;

/**
 * Form实体基础类
 * <p>
 * Created by zfh on 2019/10/19
 */
public class BaseForm {

    /**
     * JSR 303参数校验
     */
    public void validateParam() {
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Validator validator = factory.getValidator();
        Set<ConstraintViolation<BaseForm>> validate = validator.validate(this);
        Iterator<ConstraintViolation<BaseForm>> iterator = validate.iterator();
        if (iterator.hasNext()) {
            throw new ParameterException(iterator.next().getMessage());
        }
    }
}

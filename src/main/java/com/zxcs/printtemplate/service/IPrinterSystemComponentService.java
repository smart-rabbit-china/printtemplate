package com.zxcs.printtemplate.service;

import com.zxcs.printtemplate.model.PrinterSystemComponentDO;

import java.util.List;

/**
 * 打印模板-系统组件相关Service
 * Created by zfh on 2018/12/27
 */
public interface IPrinterSystemComponentService {

    /**
     * 添加系统组件
     * @param systemComponent {@link PrinterSystemComponentDO}
     * @return 自增长主键
     */
    Integer savePrinterSystemComponent (PrinterSystemComponentDO systemComponent);

    /**
     * 通过模板类型查询模板组件（系统组件）
     * @param templateType 模板类型
     * @return 组件列表
     */
    List<PrinterSystemComponentDO> listPrinterSystemComponentByTemplateType(Integer templateType);
}

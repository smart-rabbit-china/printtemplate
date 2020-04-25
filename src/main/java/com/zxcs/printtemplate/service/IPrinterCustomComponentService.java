package com.zxcs.printtemplate.service;

import com.zxcs.printtemplate.model.PrinterCustomComponentDO;

import java.util.List;

/**
 * 打印模板-自定义模板组件相关Service
 * Created by zfh on 2019/01/03
 */
public interface IPrinterCustomComponentService {

    /**
     * 保存多个自定义组件
     * @param shopPrinterCustomComponentList 组件列表
     * @return 受影响的行数
     */
    Integer saveMultiplePrinterCustomComponent (List<PrinterCustomComponentDO> shopPrinterCustomComponentList);

    /**
     * 根据模板id移除组件（软删除）
     * @param templateId 模板id
     * @return 受影响的行数
     */
    Integer removeMultiplePrinterCustomComponentByTemplateId (Integer templateId);

    /**
     * 通过模板id查询模板组件（预览组件）
     * @param documentTemplateId 模板id
     * @return 组件列表
     */
    List<PrinterCustomComponentDO> listPrinterTemplateCustomComponentByTemplateId(Integer documentTemplateId);
}

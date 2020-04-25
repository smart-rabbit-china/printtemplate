package com.zxcs.printtemplate.service.impl;

import com.zxcs.printtemplate.dao.PrinterCustomComponentMapper;
import com.zxcs.printtemplate.model.PrinterCustomComponentDO;
import com.zxcs.printtemplate.service.IPrinterCustomComponentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 打印模板-自定义组件相关Service
 * Created by zfh on 2019/01/03
 */
@Service("printerCustomComponentService")
public class PrinterCustomComponentImpl implements IPrinterCustomComponentService {

    @Autowired
    private PrinterCustomComponentMapper printerCustomComponentMapper;

    @Override
    public Integer saveMultiplePrinterCustomComponent(List<PrinterCustomComponentDO> shopPrinterCustomComponentList) {
        return printerCustomComponentMapper.insertMultiplePrinterCustomComponent(shopPrinterCustomComponentList);
    }

    @Override
    public Integer removeMultiplePrinterCustomComponentByTemplateId(Integer templateId) {
        return printerCustomComponentMapper.updateMultiplePrinterCustomComponentByTemplateId(templateId);
    }

    @Override
    public List<PrinterCustomComponentDO> listPrinterTemplateCustomComponentByTemplateId(Integer documentTemplateId) {
        return printerCustomComponentMapper.selectPrinterTemplateCustomComponentByTemplateId(documentTemplateId);
    }
}

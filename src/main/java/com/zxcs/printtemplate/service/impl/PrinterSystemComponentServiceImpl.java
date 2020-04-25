package com.zxcs.printtemplate.service.impl;

import com.zxcs.printtemplate.dao.PrinterSystemComponentMapper;
import com.zxcs.printtemplate.model.PrinterSystemComponentDO;
import com.zxcs.printtemplate.service.IPrinterSystemComponentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 打印模板-系统组件实现类
 * Created by zfh on 2018/12/27
 */
@Service("printerSystemComponentService")
public class PrinterSystemComponentServiceImpl implements IPrinterSystemComponentService {

    @Autowired
    private PrinterSystemComponentMapper printerSystemComponentMapper;

    @Override
    public Integer savePrinterSystemComponent(PrinterSystemComponentDO systemComponent) {
        return printerSystemComponentMapper.insertPrinterSystemComponent(systemComponent);
    }

    @Override
    public List<PrinterSystemComponentDO> listPrinterSystemComponentByTemplateType(Integer templateType) {
        return printerSystemComponentMapper.selectPrinterSystemComponentListByTemplateTypeId(templateType);
    }
}

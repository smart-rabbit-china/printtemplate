package com.zxcs.printtemplate.service.impl;

import com.zxcs.printtemplate.dao.PrinterKitchenDocumentTypeRulesMapper;
import com.zxcs.printtemplate.model.PrinterKitchenDocumentTypeRulesDO;
import com.zxcs.printtemplate.service.IPrinterKitchenDocumentTypeRulesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 出票口票据类型相关Service实现类
 * Created by zfh on 2019/01/09
 */
@Service("printerKitchenDocumentTypeRulesService")
public class PrinterKitchenDocumentTypeRulesServiceImpl implements IPrinterKitchenDocumentTypeRulesService {

    @Autowired
    private PrinterKitchenDocumentTypeRulesMapper printerKitchenDocumentTypeRulesMapper;

    @Override
    public Integer save(PrinterKitchenDocumentTypeRulesDO record) {
        printerKitchenDocumentTypeRulesMapper.insert(record);
        return record.getId();
    }

    @Override
    public Integer saveMultipleRecord(List<PrinterKitchenDocumentTypeRulesDO> recordList) {
        return printerKitchenDocumentTypeRulesMapper.insertMultipleRecord(recordList);
    }

    @Override
    public Integer removeMultipleRecordByPrinterKitchenId(Integer printerKitchenId) {
        return printerKitchenDocumentTypeRulesMapper.updateMultipleRecordByPrinterKitchenId(printerKitchenId);
    }

    @Override
    public List<PrinterKitchenDocumentTypeRulesDO> listPrinterKitchenDocumentTypeRulesByPrinterKitchenId(Integer printerKitchenId) {
        return printerKitchenDocumentTypeRulesMapper.selectPrinterKitchenDocumentTypeRulesListByPrinterKitchenId(printerKitchenId);
    }

    @Override
    public PrinterKitchenDocumentTypeRulesDO selectByPrimaryKey(Integer id) {
        return printerKitchenDocumentTypeRulesMapper.selectByPrimaryKey(id);
    }

    @Override
    public Integer updateByPrimaryKeySelective(PrinterKitchenDocumentTypeRulesDO record) {
        return printerKitchenDocumentTypeRulesMapper.updateByPrimaryKeySelective(record);
    }
}

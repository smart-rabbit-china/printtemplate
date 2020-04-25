package com.zxcs.printtemplate.service.impl;

import com.zxcs.printtemplate.dao.PrinterKitchenTableRulesMapper;
import com.zxcs.printtemplate.model.PrinterKitchenTableRulesDO;
import com.zxcs.printtemplate.service.IPrinterKitchenTableRulesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 出票口配置桌台区域相关Service实现类
 * Created by zfh on 2019/01/09
 */
@Service("printerKitchenTableRulesService")
public class PrinterKitchenTableRulesServiceImpl implements IPrinterKitchenTableRulesService {

    @Autowired
    private PrinterKitchenTableRulesMapper printerKitchenTableRulesMapper;

    @Override
    public Integer save(PrinterKitchenTableRulesDO record) {
        printerKitchenTableRulesMapper.insert(record);
        return record.getId();
    }

    @Override
    public Integer saveMultipleRecord(List<PrinterKitchenTableRulesDO> recordList) {
        return printerKitchenTableRulesMapper.insertMultipleRecord(recordList);
    }

    @Override
    public Integer removeMultipleRecordByPrinterKitchenId(Integer printerKitchenId) {
        return printerKitchenTableRulesMapper.updateMultipleRecordByPrinterKitchenId(printerKitchenId);
    }

    @Override
    public List<PrinterKitchenTableRulesDO> listPrinterKitchenTableRulesByPrinterKitchenId(Integer printerKitchenId) {
        return printerKitchenTableRulesMapper.selectPrinterKitchenTableRulesListByPrinterKitchenId(printerKitchenId);
    }

    @Override
    public PrinterKitchenTableRulesDO getByPrimaryKey(Integer id) {
        return printerKitchenTableRulesMapper.selectByPrimaryKey(id);
    }

    @Override
    public Integer updateByPrimaryKeySelective(PrinterKitchenTableRulesDO record) {
        return printerKitchenTableRulesMapper.updateByPrimaryKeySelective(record);
    }
}

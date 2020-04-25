package com.zxcs.printtemplate.service.impl;

import com.zxcs.printtemplate.dao.PrinterKitchenGoodsRulesMapper;
import com.zxcs.printtemplate.model.PrinterKitchenGoodsRulesDO;
import com.zxcs.printtemplate.service.IPrinterKitchenGoodsRulesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 出票口配置打印菜品相关Service实现类
 * Created by zfh on 2019/01/09
 */
@Service("printerKitchenGoodsRulesService")
public class PrinterKitchenGoodsRulesServiceImpl implements IPrinterKitchenGoodsRulesService {

    @Autowired
    private PrinterKitchenGoodsRulesMapper printerKitchenGoodsRulesMapper;

    @Override
    public Integer save(PrinterKitchenGoodsRulesDO record) {
        printerKitchenGoodsRulesMapper.insert(record);
        return record.getId();
    }

    @Override
    public Integer saveMultipleRecord(List<PrinterKitchenGoodsRulesDO> recordList) {
        return printerKitchenGoodsRulesMapper.insertMultipleRecord(recordList);
    }

    @Override
    public Integer removeMultipleRecordByPrinterKitchenId(Integer printerKitchenId) {
        return printerKitchenGoodsRulesMapper.updateMultipleRecordByPrinterKitchenId(printerKitchenId);
    }

    @Override
    public List<PrinterKitchenGoodsRulesDO> listPrinterKitchenGoodsRulesByPrinterKitchenId(Integer printerKitchenId) {
        return printerKitchenGoodsRulesMapper.selectPrinterKitchenGoodsRulesListByPrinterKitchenId(printerKitchenId);
    }

    @Override
    public PrinterKitchenGoodsRulesDO getByPrimaryKey(Integer id) {
        return printerKitchenGoodsRulesMapper.selectByPrimaryKey(id);
    }

    @Override
    public Integer updateByPrimaryKeySelective(PrinterKitchenGoodsRulesDO record) {
        return printerKitchenGoodsRulesMapper.updateByPrimaryKeySelective(record);
    }
}

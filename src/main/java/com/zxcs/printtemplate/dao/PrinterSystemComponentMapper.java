package com.zxcs.printtemplate.dao;

import com.zxcs.printtemplate.model.PrinterSystemComponentDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created by zfh on 2018/12/27
 */
@Mapper
public interface PrinterSystemComponentMapper {

    /**
     * 添加系统组件
     * @param systemComponent {@link PrinterSystemComponentDO}
     * @return 自增长主键
     */
    Integer insertPrinterSystemComponent (PrinterSystemComponentDO systemComponent);

    /**
     * 通过模板类型查询模板组件（系统组件）
     * @param templateType 模板类型
     * @return 组件列表
     */
    List<PrinterSystemComponentDO> selectPrinterSystemComponentListByTemplateTypeId(Integer templateType);
}

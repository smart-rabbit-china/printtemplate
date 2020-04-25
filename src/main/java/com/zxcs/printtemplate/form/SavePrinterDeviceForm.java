package com.zxcs.printtemplate.form;

import com.zxcs.printtemplate.model.PrinterDeviceDO;
import lombok.Data;
import lombok.ToString;
import org.springframework.beans.BeanUtils;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 * 新增 打印机 请求
 * Created by zfh on 2019/01/09
 */
@Data
@ToString
public class SavePrinterDeviceForm extends BaseForm{

    /**
     * 打印机名称
     */
    @NotEmpty(message = "缺少deviceName")
    private String deviceName;

    /**
     * 打印机类型：1-服务器 2-网络打印机
     */
    @NotNull(message = "缺少printerDeviceType")
    private Integer printerDeviceType;

    /**
     * ip地址
     */
    @NotEmpty(message = "缺少address")
    private String address;

    /**
     * 店铺id
     */
    @NotNull(message = "缺少shopId")
    private Integer shopId;

    /**
     * 平台用户ID
     */
    @NotNull(message = "缺少operatorId")
    private Integer operatorId;

    /**
     * 获取 打印机实体对象
     */
    public PrinterDeviceDO getPrinterDevice () {
        PrinterDeviceDO printerDevice = new PrinterDeviceDO();
        BeanUtils.copyProperties(this, printerDevice);
        printerDevice.setDelete(0);
        printerDevice.setCreatorId(operatorId);
        printerDevice.setCreatorName("");
        return printerDevice;
    }
}

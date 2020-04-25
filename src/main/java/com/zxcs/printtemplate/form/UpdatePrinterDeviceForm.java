package com.zxcs.printtemplate.form;

import com.zxcs.printtemplate.model.PrinterDeviceDO;
import lombok.Data;
import lombok.ToString;
import org.springframework.beans.BeanUtils;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 * 更新打印机 请求
 * Created by zfh on 2019/01/09
 */
@Data
@ToString
public class UpdatePrinterDeviceForm extends BaseForm {

    /**
     * 设备ID
     */
    @NotNull(message = "缺少id")
    private Integer id;

    /**
     * 打印机名称
     */
    @NotEmpty(message = "缺少deviceName")
    private String deviceName;

    /**
     * 打印机类型
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
     * @return {@link PrinterDeviceDO}
     */
    public PrinterDeviceDO getScShopPrinterDevice () {
        PrinterDeviceDO printerDevice = new PrinterDeviceDO();
        BeanUtils.copyProperties(this, printerDevice);
        printerDevice.setUpdatorId(operatorId);
        printerDevice.setUpdatorName("");
        return printerDevice;
    }
}

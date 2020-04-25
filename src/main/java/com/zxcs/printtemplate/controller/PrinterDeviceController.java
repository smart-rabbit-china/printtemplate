package com.zxcs.printtemplate.controller;

import com.github.pagehelper.PageInfo;
import com.zxcs.printtemplate.exception.print.PrinterDeviceException;
import com.zxcs.printtemplate.form.SavePrinterDeviceForm;
import com.zxcs.printtemplate.form.UpdatePrinterDeviceForm;
import com.zxcs.printtemplate.helper.MapHelper;
import com.zxcs.printtemplate.model.PrinterDeviceDO;
import com.zxcs.printtemplate.service.IPrinterDeviceService;
import com.zxcs.printtemplate.vo.PrinterDeviceVO;
import com.zxcs.printtemplate.vo.Response;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * 设备-打印机
 * <p>
 * Created by zfh on 2019/01/09
 */
@RequestMapping("printerDevice")
@RestController
public class PrinterDeviceController {

    @Autowired
    private IPrinterDeviceService printerDeviceService;

    /**
     * 新增-打印机
     *
     * @param form {@link SavePrinterDeviceForm}
     * @return {@link Response}
     */
    @PostMapping("save")
    public Response save(@RequestBody SavePrinterDeviceForm form) {
        form.validateParam();

        printerDeviceService.save(form.getPrinterDevice());
        return Response.newInstance();
    }

    /**
     * 打印机列表
     *
     * @return {@link Response}
     */
    @GetMapping("list")
    public Response queryList(@RequestParam(name = "shopId", defaultValue = "0") Integer shopId,
                              @RequestParam(name = "page", defaultValue = "1") Integer page,
                              @RequestParam(name = "rows", defaultValue = "10") Integer rows) {
        PageInfo<PrinterDeviceDO> pageInfo = printerDeviceService.listPrinterDeviceByShopId(shopId, page, rows);
        List<PrinterDeviceVO> voList = new ArrayList<>(10);
        for (PrinterDeviceDO printerDevice : pageInfo.getList()) {
            PrinterDeviceVO printerDeviceVO = new PrinterDeviceVO();
            BeanUtils.copyProperties(printerDevice, printerDeviceVO);
            voList.add(printerDeviceVO);
        }
        return Response.newInstance().setData(MapHelper.newInstance().put("total", pageInfo.getTotal()).put("list", voList).map());
    }

    /**
     * 查询-打印机
     *
     * @return {@link Response}
     */
    @GetMapping("")
    public Response doQuery(@RequestParam(name = "id", defaultValue = "0") Integer id) {
        PrinterDeviceDO printerDevice = printerDeviceService.getScShopPrinterDeviceByPrimaryKey(id);
        if (printerDevice == null || printerDevice.getDelete().equals(1)) {
            throw new PrinterDeviceException();
        }
        PrinterDeviceVO printerDeviceVO = new PrinterDeviceVO();
        BeanUtils.copyProperties(printerDevice, printerDeviceVO);
        return Response.newInstance().setData(printerDeviceVO);
    }

    /**
     * 更新-打印机
     *
     * @param form {@link UpdatePrinterDeviceForm}
     * @return {@link Response}
     */
    @PutMapping("edit")
    public Response doEdit(@RequestBody UpdatePrinterDeviceForm form) {
        form.validateParam();

        PrinterDeviceDO printerDevice = printerDeviceService.getScShopPrinterDeviceByPrimaryKey(form.getId());
        if (printerDevice == null || printerDevice.getDelete().equals(1)) {
            throw new PrinterDeviceException();
        }
        printerDeviceService.updateByPrimaryKeySelective(form.getScShopPrinterDevice());
        return Response.newInstance();
    }

    /**
     * 删除-打印机
     *
     * @return {@link Response}
     */
    @DeleteMapping("")
    public Response doDelete(@RequestParam(name = "id", defaultValue = "0") Integer id) {
        PrinterDeviceDO printerDevice = printerDeviceService.getScShopPrinterDeviceByPrimaryKey(id);
        if (printerDevice == null || printerDevice.getDelete().equals(1)) {
            throw new PrinterDeviceException();
        }
        PrinterDeviceDO params = new PrinterDeviceDO();
        params.setId(printerDevice.getId());
        printerDevice.setDelete(1);
        printerDeviceService.updateByPrimaryKeySelective(printerDevice);
        return Response.newInstance();
    }
}

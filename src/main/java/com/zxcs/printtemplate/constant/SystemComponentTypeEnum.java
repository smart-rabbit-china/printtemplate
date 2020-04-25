package com.zxcs.printtemplate.constant;

/**
 * 打印模板-系统组件类型枚举
 * Created by zfh on 2018/12/27
 */
public enum  SystemComponentTypeEnum {

    HIDDEN("hidden", "隐藏-refId"),
    TEXT("text", "文本"),
    GRID("grid", "网格"),
    TITLE("title", "表格标题"),
    CATEGORY("category", "分类"),
    TABLE_HEAD("head", "表格头");

    private String name;

    private String desc;

    SystemComponentTypeEnum (String name, String desc) {
        this.name = name;
        this.desc = desc;
    }

    public String getName() {
        return name;
    }

    public String getDesc() {
        return desc;
    }
}

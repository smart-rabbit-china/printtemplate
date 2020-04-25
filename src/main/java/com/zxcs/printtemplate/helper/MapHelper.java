package com.zxcs.printtemplate.helper;

import com.alibaba.fastjson.JSONObject;

import java.util.HashMap;
import java.util.Map;

/**
 * Map帮助类
 * <p>
 * Created by zfh on 2020/04/23
 */
public class MapHelper {

    public Map<String, Object> data = new HashMap<>(10);

    public static MapHelper newInstance() {
        return new MapHelper();
    }

    public MapHelper put(String key, Object value) {
        data.put(key, value);
        return this;
    }

    public String json() {
        return JSONObject.toJSONString(data);
    }

    public Map<String, Object> map() {
        return data;
    }
}

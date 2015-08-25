package com.zdmoney.zdhd.dao.impl.mybatis.typeHandler;

import com.alibaba.fastjson.JSONArray;

/**
 * Created by com.zdmoney.zdhd on 2015/1/5.
 */
public class JSONArrayTypeHandler extends JSONTypeHandler<JSONArray> {

    public JSONArrayTypeHandler(Class<JSONArray> type) {
        super(type);
    }

    @Override
    protected JSONArray parseJSONString(String jsonString) {
        return JSONArray.parseArray(jsonString);
    }

}

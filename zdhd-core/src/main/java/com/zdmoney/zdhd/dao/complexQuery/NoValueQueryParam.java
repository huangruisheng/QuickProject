package com.zdmoney.zdhd.dao.complexQuery;

import lombok.Getter;

/**
 * @author com.zdmoney.zdhd
 */
public class NoValueQueryParam extends CustomQueryParam {

    @Getter
    private String condition;

    public NoValueQueryParam(String property, String condition) {
        super.property = property;
        this.condition = condition;
    }
}

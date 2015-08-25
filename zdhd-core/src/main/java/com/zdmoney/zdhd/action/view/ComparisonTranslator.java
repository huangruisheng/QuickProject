package com.zdmoney.zdhd.action.view;

/**
 * Created by com.zdmoney.zdhd on 2014/6/27.
 */
public class ComparisonTranslator {

    public static String translate(String comparison) {
        if ("eq".equals(comparison)) {
            return "=";
        } else if ("lt".equals(comparison)) {
            return "<=";
        } else if ("gt".equals(comparison)) {
            return ">=";
        }
        return "=";
    }

}

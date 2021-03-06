package com.zdmoney.zdhd.generator.model;

import java.util.UUID;

/**
 * @author com.zdmoney.zdhd
 */
public final class Generate {

    private static final Generate INSTANCE = new Generate();

    private Generate() {
        super();
    }

    public static Generate getInstance() {
        return INSTANCE;
    }

    public String getSerialVersionUID() {
        return "private static final long serialVersionUID = " + UUID.randomUUID().getMostSignificantBits() + "L;";
    }

}

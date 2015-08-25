package com.zdmoney.zdhd.generator.model;

import com.zdmoney.zdhd.util.StringUtils;
import lombok.Getter;
import lombok.Setter;

/**
 * @author com.zdmoney.zdhd
 */
public class Property {

    @Getter
    private String name;
    @Getter
    private String columnName;
    @Getter@Setter
    private String comment;
    @Getter@Setter
    private PropertyType type;

    public void setColumnName(String columnName) {
        this.columnName = columnName;
        this.name = StringUtils.uncapitalizeCamelBySeparator(columnName, "_");
    }

}

package com.zdmoney.zdhd.action.view;

import lombok.Data;

import java.util.List;

/**
 * Created by com.zdmoney.zdhd on 2014/12/22.
 */
@Data
public class DefaultTableView implements TableView {

    private List<?> rows;
    private int total;

}

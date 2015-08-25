package com.zdmoney.integral.service.impl;

import com.zdmoney.integral.service.IIntegralOrderService;
import com.zdmoney.integral.dao.IntegralOrderDAO;
import com.zdmoney.integral.model.IntegralOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zdmoney.zdhd.service.EntityServiceImpl;

@Service
public class IntegralOrderService extends EntityServiceImpl<IntegralOrder> implements IIntegralOrderService {

    @Autowired
    private IntegralOrderDAO integralOrderDAO;

}

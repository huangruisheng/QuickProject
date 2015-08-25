package com.zdmoney.integral.facade;

import com.zdmoney.integral.api.facade.IIntegralOrderFacadeService;
import com.zdmoney.integral.service.IIntegralOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class IntegralOrderFacadeService implements IIntegralOrderFacadeService {

    @Autowired
    private IIntegralOrderService integralOrderService;

}
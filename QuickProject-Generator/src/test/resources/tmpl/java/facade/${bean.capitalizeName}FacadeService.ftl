package com.zdmoney.integral.facade;

import com.zdmoney.integral.api.facade.I${bean.capitalizeName}FacadeService;
import ${config.javaPackageName}${module.name}.service.I${bean.capitalizeName}Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ${bean.capitalizeName}FacadeService implements I${bean.capitalizeName}FacadeService {

    @Autowired
    private I${bean.capitalizeName}Service ${bean.name}Service;

}
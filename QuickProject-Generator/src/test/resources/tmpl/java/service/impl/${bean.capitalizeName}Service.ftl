package ${config.javaPackageName}${module.name}.service.impl;

import ${config.javaPackageName}${module.name}.service.I${bean.capitalizeName}Service;
import ${config.javaPackageName}${module.name}.dao.${bean.capitalizeName}DAO;
import ${config.javaPackageName}${module.name}.model.${bean.capitalizeName};
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ${bean.capitalizeName}Service extends EntityServiceImpl<${bean.capitalizeName}> implements I${bean.capitalizeName}Service {

    @Autowried
    private ${bean.capitalizeName}DAO ${bean.name}DAO;

}

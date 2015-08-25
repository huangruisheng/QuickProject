package ${config.javaPackageName}${module.name}.model;

import com.zdmoney.integral.base.BaseEntity;
import lombok.Data;
import javax.persistence.Table;

@Data
@Table(name = "${bean.tableName}")
public class ${bean.capitalizeName} extends BaseEntity {

    ${generate.serialVersionUID}

    <#list bean.properties as prop>
    private ${prop.type.java} ${prop.name}; <#if prop.comment??>// ${prop.comment}</#if>

    </#list>

}

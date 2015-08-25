package ${config.javaPackageName}${module.name}.model;

import com.zdmoney.integral.base.BaseEntity;
import lombok.Data;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "${bean.tableName}")
public class ${bean.capitalizeName} extends BaseEntity {

    ${generate.serialVersionUID}

    <#list bean.properties as prop>
    <#if prop.name!="id"&&prop.name!="createTime"&&prop.name!="modifyTime"&&prop.name!="operator">
    private ${prop.type.java} ${prop.name}; <#if prop.comment??>// ${prop.comment}</#if>

    </#if>
    </#list>

}

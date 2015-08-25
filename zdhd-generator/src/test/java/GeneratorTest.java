import com.zdmoney.zdhd.generator.FilesGenerator;
import com.zdmoney.zdhd.generator.GlobalConfig;
import com.zdmoney.zdhd.generator.exception.GlobalConfigException;
import junit.framework.TestCase;
import org.junit.Test;

/**
 * @author com.zdmoney.zdhd
 */
public class GeneratorTest extends TestCase {

    @Test
    public void testGenerator() throws GlobalConfigException {
        FilesGenerator generator = new FilesGenerator();
        GlobalConfig globalConfig = generator.getGlobalConfig();
        globalConfig.setOutProjectPath("/Users/rui/zdhd/zdhd-generator/content"); // 注意修改此参数项
        globalConfig.setBeanNameRegex("^T_TGL_(\\w+)$");
//        globalConfig.setBeanNameRegex("^T_[A-Z]{3}_(\\w+)$");
        globalConfig.setJavaPackageName("com.zdmoney.");
        globalConfig.setJavaPackagePath("com/zdmoney/");
        globalConfig.setIgnoreExists(false);

        generator.process();
    }

}

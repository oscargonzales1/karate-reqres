package runners;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class ReqresTests {

    @Test
    Karate runAll() {
        return Karate.run("classpath:features/reqres").relativeTo(getClass());
    }
}
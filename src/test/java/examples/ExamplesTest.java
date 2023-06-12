package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class ExamplesTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:examples")
                //.outputCucumberJson(true)
                .parallel(5);
        System.out.println("results=");
        System.out.println(results.getFailCount());
        System.out.println(results.getErrorMessages());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
       
    }

}

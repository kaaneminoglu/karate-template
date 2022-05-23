package swapi.films;

import com.intuit.karate.junit5.Karate;

public class TestFilmRunner {
    @Karate.Test
    Karate testAll() {
        System.setProperty("karate.env", "swapi");
        return Karate.run("filmController").relativeTo(getClass());
    }
}
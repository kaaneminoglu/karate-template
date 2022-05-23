function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'swapi';
    }
    var config = {
        env: env
    }
    if (env === 'swapi') {
        config.baseUrl = "https://swapi.dev/api/";
        // customize
        // e.g. config.foo = 'bar';
    } else if (env === 'e2e') {
        // customize
    }
    return config;
}
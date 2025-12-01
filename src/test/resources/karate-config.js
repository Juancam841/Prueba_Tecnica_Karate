function fn() {
    karate.configure('connectTimeout', 7000);
    karate.configure('readTimeout', 7000);
    karate.configure('ssl', true);

    let baseUrl = karate.properties['baseUrl'] || 'https://reqres.in'

    return {
        api: {
            baseUrl: baseUrl
        },
        rolesTest: {
            firstRol: "qa",
            secondRol: "leader",
            thirdRol: "developer",
        }
    };
}
module.exports = {

    secret: (process.env.API_SECRET || "some-long-secret-to-varify-in-middleware"),

    PG: {
        host: (process.env.DB_CONTAINER || "postgres"), //set to container name when dockerizing to docker virtual network
        db: (process.env.DB_NAME || "db"),
        port: (process.env.DB_PORT || 5432),
        user: (process.env.DB_USER || "johndoe"),
        password: (process.env.DB_PASSWORD || "p4ssw0rd"),
    },

    HOSTNAME: (process.env.HOSTNAME || "localhost"),
    APP_PORT: (process.env.APP_PORT || 8080),
    
}
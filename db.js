const Pool = require('pg').Pool;
require('dotenv').config()

const pool = new Pool({
    user:"postgres",
    password: process.env.PASSWORD,
    database: "blackjack",
    host: "localhost",
    port: 5432
})

module.exports = pool;

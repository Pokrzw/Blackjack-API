const express = require("express")
const app = express()
const { Pool, Client } = require('pg')
const pool = require('./db')
const profile = require('./routes/profile')

app.use(express.json());

app.use('/profile', profile)

app.listen(5000, () => {
    console.log("Listenin on 5000")
})
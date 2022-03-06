const express = require('express');
const router = express.Router();

router.get('/', async(req, res) => {
    try {
        console.log("Hello world");
    } catch(err){
        console.error(err.message);
    }
})

module.exports = router
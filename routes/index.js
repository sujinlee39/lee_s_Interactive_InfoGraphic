const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, name, Image FROM tbl_data";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        // console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { info: result });
    })
})

router.get('/info/:id', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the info route');
    console.log(req.params.id); // 1, 2 3 or whatever comes after the slash

    let query = `SELECT * FROM tbl_info WHERE dataID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result);
       

        // render the home view with dynamic data
        res.json(result[0]);
    }) 
})

module.exports = router;
var express = require('express');
var router = express.Router();
const {monsterPool} = require('../db');

router.get('/', function(request, response, next) {
    // response.send('respond with a resource');
    monsterPool.query('SELECT * FROM monsters', (err, res) => {
        if (!err) {
            response.send({data: res.rows});
        } else {
            return console.log(err);
        }
    });
});

router.get('/monsters', function(request, response, next) {
    // response.send('respond with a resource');
    monsterPool.query('SELECT * FROM monsters', (err, res) => {
        if (!err) {
            response.send({data: res.rows});
        } else {
            return console.log(err);
        }
    });
});

router.get('/habitats', function(request, response, next) {
    // response.send('respond with a resource');
    monsterPool.query('SELECT * FROM habitats', (err, res) => {
        if (!err) {
            response.send({data: res.rows});
        } else {
            return console.log(err);
        }
    });
});

router.get('/residence', function(request, response, next) {
    // response.send('respond with a resource');
    monsterPool.query('SELECT * FROM residence', (err, res) => {
        if (!err) {
            response.send({data: res.rows});
        } else {
            return console.log(err);
        }
    });
});

module.exports = router;

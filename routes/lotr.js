var express = require('express');
var router = express.Router();
const {lotrPool} = require('../db');

router.get('/', function (request, response, next) {
    // response.send('respond with a resource');
    lotrPool.query('SELECT * FROM allies', (err, res) => {
        if (!err) {
            response.send({data: res.rows});
        } else {
            return console.log(err);
        }
    });
});

router.get('/allies', function (request, response, next) {
    // response.send('respond with a resource');
    lotrPool.query('SELECT * FROM allies', (err, res) => {
        if (!err) {
            response.send({data: res.rows});
        } else {
            return console.log(err);
        }
    });
});

router.get('/guardians', function (request, response, next) {
    // response.send('respond with a resource');
    lotrPool.query('SELECT * FROM guardians', (err, res) => {
        if (!err) {
            response.send({data: res.rows});
        } else {
            return console.log(err);
        }
    });
});

router.get('/elves', function (request, response, next) {
    // response.send('respond with a resource');
    lotrPool.query('SELECT * FROM elves', (err, res) => {
        if (!err) {
            response.send({data: res.rows});
        } else {
            return console.log(err);
        }
    });
});

router.get('/hobbits', function (request, response, next) {
    // response.send('respond with a resource');
    lotrPool.query('SELECT * FROM hobbits', (err, res) => {
        if (!err) {
            response.send({data: res.rows});
        } else {
            return console.log(err);
        }
    });
});

router.get('/wizards', function (request, response, next) {
    // response.send('respond with a resource');
    lotrPool.query('SELECT * FROM wizards', (err, res) => {
        if (!err) {
            response.send({data: res.rows});
        } else {
            return console.log(err);
        }
    });
});
module.exports = router;

var express = require('express');
var router = express.Router();
var display_settings = require('../display_settings.json')

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', display_settings);
});

module.exports = router;

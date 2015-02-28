express = require("express")
router = express.Router()
display_settings = require("../display_settings.json")

# GET home page. 
router.get "/", (req, res, next) ->
  res.render "index", display_settings
  return

module.exports = router

express = require("express")
router = express.Router()
display_settings = require("../display_settings.json")
marked = require 'marked'
fs = require 'fs'

marked.setOptions(sanitize: false)

for page in display_settings.pages
  if page.markdown
    path = "./markdown/#{page.slug}.md"
    page.html = marked fs.readFileSync(path, 'utf-8')

router.get "/", (req, res, next) ->
  res.render "index", display_settings
  return

module.exports = router

var c = module.exports = require('./config_prefix')

c.assets = [
  "ASSET1"
]
c.currencies = [
  "ASSET2",
  "ASSET1"
]

// default selector for indicators, etc
c.default_selector = "prefix.ASSET1-ASSET2"

var c = module.exports = require('./config_kraken')

c.assets = [
  "ASSET1"
]
c.currencies = [
  "ASSET2",
  "ASSET1"
]

// default selector for indicators, etc
c.default_selector = "kraken.ASSET1-ASSET2"

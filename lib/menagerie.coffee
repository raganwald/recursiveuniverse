# This module is part of [cafeaulife.coffee](http:cafeaulife.html).
#
# ## Objects Module
#
# The Objects Module mixes common objects from the Conway's Life Universe. It's not automatically loaded.

_ = require('underscore')
exports ?= window or this

Life = require('./cafeaulife').set_universe_rules()

_.defaults exports,

  r: Life.Square.from_json [
    [0, 0, 0, 0]
    [0, 1, 0, 0]
    [1, 1, 1, 0]
    [0, 0, 1, 0] ]

  block: Life.Square.from_json [
    [1, 1]
    [1, 1] ]

  t: Life.Square.from_json [
    [0, 1, 1, 1]
    [0, 0, 1, 0]
    [0, 0, 0, 0]
    [0, 0, 0, 0] ]

  # The [acorn](http://www.argentum.freeserve.co.uk/lex_a.htm#acorn) stabilizes in 5206 generations
  # with a population of 633
  acorn: Life.Square.from_json [
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 1, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 1, 0, 0, 0, 0]
    [1, 1, 0, 0, 1, 1, 1, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0]
    [0, 0, 0, 0, 0, 0, 0, 0] ]
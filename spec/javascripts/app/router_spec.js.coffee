#= require spec_helper
#= require router

describe "Matchmup.Router", ->
  it "is an Ember.Router", ->
    assert.ok Matchmup.Router
    assert.ok Ember.Router.detect(Matchmup.Router)

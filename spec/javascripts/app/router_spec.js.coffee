#= require spec_helper
#= require router

describe "Matchmup.Router", ->
  it "is an Ember.Router", ->
    assert.ok App.Router
    assert.ok Ember.Router.detect(App.Router)

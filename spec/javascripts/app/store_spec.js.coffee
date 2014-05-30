#= require spec_helper
#= require store

describe "Matchmup.Store", ->
  beforeEach( ->
    Test.store = TestUtil.lookupStore()
  )

  # it "works with latest Ember-Data revision", ->
  #   assert.equal Matchmup.store.get('revision'), 12

define [
  'backbone'
  'underscore'
], (Backbone, _) ->

  class User extends Backbone.Model
    
    defaults:
    
      name: 'name undefined'
      age: ''

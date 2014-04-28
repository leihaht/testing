define [
  'backbone'
  'underscore'
  'app/models/user'
], (Backbone, _, User) ->

  class UserCollection extends Backbone.Collection
    
    model: User
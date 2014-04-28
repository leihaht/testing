define [
  'backbone'
  'underscore'
  'app/collections/users'
  'text!templates/app.html'
], (Backbone, _, UserCollection, tpl) ->

  class App extends Backbone.View

    el: "#total"

    events: {}

    initialize: (options) ->
      @.collection = new UserCollection
      @.collection.add [
        name: 'HTC'
        age: '36'
      ,
        name: '지홍'
        age: '36'
      ,
        name: 'some'
        age: '...'
      ,
        name: '누군가'
        age: '...'
      ]

    render: ->
      @$el.html _.template( tpl, { users: @.collection.models  } )

  appView = new App()

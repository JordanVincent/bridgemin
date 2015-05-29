`import Ember from "ember";`

IndexRoute = Ember.Route.extend
  beforeModel: ->
    @set 'eventsPromise', @store.find 'entry',
      content_type: @contentful.contentTypeFor('event')
    @set 'storiesPromise', @store.find 'entry',
      content_type: @contentful.contentTypeFor('story')
      order: '-sys.createdAt'
      limit: 2

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('events', @get('eventsPromise'))
    controller.set('stories', @get('storiesPromise'))

`export default IndexRoute;`
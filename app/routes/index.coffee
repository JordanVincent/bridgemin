`import Ember from "ember";`

IndexRoute = Ember.Route.extend
  beforeModel: ->
    @set 'eventsPromise', @store.find 'entry',
      content_type: @contentful.contentTypeFor('event')
    @set 'storiesPromise', @store.find 'entry',
      content_type: @contentful.contentTypeFor('story')
      order: '-sys.updatedAt'
      limit: 1
    @set 'newsPromise', @store.find 'entry',
      content_type: @contentful.contentTypeFor('news')
      order: '-sys.createdAt'
      limit: 2

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('events', @get('eventsPromise'))
    controller.set('stories', @get('storiesPromise'))
    controller.set('news', @get('newsPromise'))

`export default IndexRoute;`
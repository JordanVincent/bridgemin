`import Ember from "ember";`

IndexRoute = Ember.Route.extend
  beforeModel: ->
    @set 'eventsPromise', @store.find('entry', {content_type: @contentful.contentTypeFor('event')})

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('events', @get('eventsPromise'))

`export default IndexRoute;`
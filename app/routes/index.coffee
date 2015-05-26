`import Ember from "ember";`
`import config from '../config/environment';`

contentful = config.contentful

IndexRoute = Ember.Route.extend
  beforeModel: ->
    @set 'eventsPromise', @store.find('entry', {content_type: contentful.model.event})

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('events', @get('eventsPromise'))

`export default IndexRoute;`
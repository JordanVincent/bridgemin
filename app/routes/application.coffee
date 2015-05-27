`import Ember from "ember";`

ApplicationRoute = Ember.Route.extend
  beforeModel: ->
    @set 'fragmentsPromise', @store.find('entry', {content_type: @contentful.contentTypeFor('fragment')})

  model: ->
    @store.find('entry', {content_type: @contentful.contentTypeFor('section')})
    .then (sections) ->
      sections.get('firstObject.pages').then (pages) ->
        sections

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('sections', model)
    controller.set('fragments', @get('fragmentsPromise'))

  actions:
    goTo: (route, model) ->
      return false unless route in ['section','page']
      return @transitionTo(route, model) if route is 'section'
      @transitionTo(route, model.get('section'), model) if route is 'page'

`export default ApplicationRoute;`
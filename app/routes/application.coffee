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

`export default ApplicationRoute;`
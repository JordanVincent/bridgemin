`import Ember from "ember";`

ApplicationRoute = Ember.Route.extend
  model: ->
    # sections
    @store.find('entry', {content_type:'3Cdf29xH5YmCcCOQEgiqGE'}).then (sections) ->
      sections.get('firstObject.pages').then (pages) ->
        sections

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('sections', model)

`export default ApplicationRoute;`
`import Ember from "ember";`
`import config from '../config/environment';`

contentful = config.contentful

ApplicationRoute = Ember.Route.extend
  model: ->
    # sections
    @store.find('entry', {content_type: contentful.model.section}).then (sections) ->
      sections.get('firstObject.pages').then (pages) ->
        sections

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('sections', model)

`export default ApplicationRoute;`
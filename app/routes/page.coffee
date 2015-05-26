`import Ember from "ember";`

PageRoute = Ember.Route.extend
  serialize: (model, params) ->
    { page_slug: model.get('slug')}

  model: (params) ->
    @store.find('entry',
      content_type: @contentful.contentTypeFor('page')
      'fields.slug': params.page_slug
    ).then (pages) ->
      pages.get('firstObject')

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('section', @modelFor('section'))

  renderTemplate: ->
    @_super()

    customTemplate = @modelFor('page').get('customTemplate')
    return unless customTemplate

    @controllerFor(customTemplate)
    .set('model', @modelForCustom(customTemplate))

    @render customTemplate,
      outlet: 'extra'
      into: 'page'
      controller: customTemplate

  modelForCustom: (customTemplate) ->

    if customTemplate is 'events'
      @store.find('entry',
        content_type: @contentful.contentTypeFor('event')
      )

`export default PageRoute;`
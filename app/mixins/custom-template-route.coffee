`import Ember from "ember";`

CustomTemplateRoute = Ember.Mixin.create

  renderTemplate: ->
    @_super()

    routeName = @get('routeName')
    @renderBreadcrumb()

    customTemplate = @modelFor(routeName).get('customTemplate')
    return unless customTemplate

    @controllerFor(customTemplate)
    .set('model', @modelForCustom(customTemplate))

    @render customTemplate,
      outlet: 'extra'
      into: routeName
      controller: customTemplate

  modelForCustom: (customTemplate) ->
    if customTemplate is 'events'
      @store.find('entry',
        content_type: @contentful.contentTypeFor('event')
      )
    else if customTemplate is 'newsletter'
      @store.find('entry',
        content_type: @contentful.contentTypeFor('newsletter')
      )
    else if customTemplate is 'reports'
      @store.find('entry',
        content_type: @contentful.contentTypeFor('report')
      )

  renderBreadcrumb: ->
    Ember.Logger.warn('renderBreadcrumb not defined. Please import BreadcrumbRouteMixin')

`export default CustomTemplateRoute;`
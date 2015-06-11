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
    switch customTemplate
      when 'events'
        @store.find('entry',
          content_type: @contentful.contentTypeFor('event')
          order: '-fields.startDate'
        )
      when 'newsletter'
        @store.find('entry',
          content_type: @contentful.contentTypeFor('newsletter')
          order: '-fields.date'
        )
      when 'reports'
        @store.find('entry',
          content_type: @contentful.contentTypeFor('report')
          order: '-fields.date'
        )
      when 'stories'
        @store.find('entry',
          content_type: @contentful.contentTypeFor('story')
          order: '-sys.updatedAt'
        )
      when 'equipment-types'
        @store.find('entry',
          content_type: @contentful.contentTypeFor('equipmentType')
        )
      when 'suggested-donations'
        @store.find('entry',
          content_type: @contentful.contentTypeFor('equipmentType')
          'fields.show': true
        )
      when 'staff-members'
        @store.find('entry',
          content_type: @contentful.contentTypeFor('staffMember')
        )

  renderBreadcrumb: ->
    Ember.Logger.warn('renderBreadcrumb not defined. Please import BreadcrumbRouteMixin')

`export default CustomTemplateRoute;`
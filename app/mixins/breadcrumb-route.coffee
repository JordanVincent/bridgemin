`import Ember from "ember";`

BreadcrumbRoute = Ember.Mixin.create
  renderBreadcrumb: ->
    routeName = @get('routeName')
    routeController = @controllerFor(routeName)

    @render 'breadcrumb',
      outlet: 'breadcrumb'
      into: 'section'
      controller: routeController

`export default BreadcrumbRoute;`
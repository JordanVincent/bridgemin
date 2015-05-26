`import Ember from "ember";`

PageRoute = Ember.Route.extend
  serialize: (model, params) ->
    { page_slug: model.get('slug')}

  model: (params) ->
    @store.find('entry',
      content_type:'3SWJKtyBoAc8s4m0iYuO64'
      'fields.slug': params.page_slug
    ).then (pages) ->
      pages.get('firstObject')

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('section', @modelFor('section'))

`export default PageRoute;`
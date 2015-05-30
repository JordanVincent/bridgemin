`import Ember from "ember";`
`import CustomTemplateRouteMixin from "../mixins/custom-template-route";`

PageRoute = Ember.Route.extend CustomTemplateRouteMixin,
  serialize: (model, params) ->
    { page_slug: model.get('slug')}

  model: (params) ->
    new Ember.RSVP.Promise (resolve, reject) =>
      @store.find('entry',
        content_type: @contentful.contentTypeFor('page')
        'fields.slug': params.page_slug
      ).then (pages) ->
        if pages.get('length')
          resolve pages.get('firstObject')
        else reject()

  setupController: (controller, model) ->
    @_super(controller, model)
    controller.set('section', @modelFor('section'))

`export default PageRoute;`
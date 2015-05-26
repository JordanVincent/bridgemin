`import Ember from "ember";`
`import config from '../config/environment';`

contentful = config.contentful

SectionRoute = Ember.Route.extend
  model: (params) ->
    @store.find('entry',
      content_type: contentful.model.section
      'fields.slug': params.slug
    ).then (sections) ->
      sections.get('firstObject')

`export default SectionRoute;`
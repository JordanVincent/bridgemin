`import Ember from "ember";`

SectionRoute = Ember.Route.extend
  model: (params) ->
    @store.find('entry',
      content_type:'3Cdf29xH5YmCcCOQEgiqGE'
      'fields.slug': params.slug
    ).then (sections) ->
      sections.get('firstObject')

`export default SectionRoute;`
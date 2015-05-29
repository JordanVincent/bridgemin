`import Ember from "ember";`

SectionRoute = Ember.Route.extend
  model: (params) ->
    new Ember.RSVP.Promise (resolve, reject) =>
      @store.find('entry',
        content_type: @contentful.contentTypeFor('section')
        'fields.slug': params.slug
      ).then (sections) ->
        if sections.get('length')
          resolve sections.get('firstObject')
        else reject()

`export default SectionRoute;`
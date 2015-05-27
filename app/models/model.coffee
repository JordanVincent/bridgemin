`import DS from "ember-data";`
`import Ember from "ember";`

Model = DS.Model.extend
  contentTypeId: DS.attr()

  contentType: Ember.computed 'contentTypeId',
    get: ->  @contentful.modelForContentType @get('contentTypeId')

  isSection: Ember.computed 'contentType',
    get: -> @get('contentType') is 'section'

  isPage: Ember.computed 'contentType',
    get: -> @get('contentType') is 'page'


`export default Model;`

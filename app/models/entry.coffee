`import DS from "ember-data";`
`import Model from "./model";`

Entry = Model.extend

  image: DS.belongsTo('asset', {async: true})
  title: DS.attr()
  body: DS.attr()
  slug: DS.attr()
  date: DS.attr('date')

  # pages & sections
  customTemplate: DS.attr()

  # sections
  pages: DS.hasMany('entry', {async: true, inverse: null})

  # pages
  section: DS.belongsTo('entry', {async: true, inverse: null})

  # fragments only
  link: DS.belongsTo('entry', {async: true, inverse: null})
  linkText: DS.attr()

  linkHref: Ember.computed 'link.contentType', 'link.slug',
    get: ->
      model = @contentful.modelForContentType @get('link.contentType')
      if model is 'section'
        @get('link.slug')

`export default Entry;`

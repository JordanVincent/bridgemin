`import DS from "ember-data";`
`import Model from "./model";`

Entry = Model.extend
  image: DS.belongsTo('asset')
  title: DS.attr()
  body: DS.attr()
  slug: DS.attr()

  # pages & sections
  customTemplate: DS.attr()

  # sections
  pages: DS.hasMany('entry', {async: true, inverse: null})
  fragments: DS.hasMany('entry', {async: true, inverse: null})
  position: DS.attr()
  icon: DS.belongsTo('asset')
  isProgram: DS.attr()
  description: DS.attr()
  titleBreak: Ember.computed 'title',
    get: ->
      return unless @get('title')
      @get('title').replace(' ','<br>')

  # pages
  section: DS.belongsTo('entry', {async: true, inverse: null})

  # fragments
  link: DS.belongsTo('entry', {async: true, inverse: null})
  linkText: DS.attr()

  # events
  date: DS.attr('date')

  linkHref: Ember.computed 'link.contentType', 'link.slug',
    get: ->
      model = @contentful.modelForContentType @get('link.contentType')
      if model is 'section'
        @get('link.slug')

`export default Entry;`

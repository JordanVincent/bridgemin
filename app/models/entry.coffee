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
  color: DS.attr()

  # pages
  section: DS.belongsTo('entry', {async: true, inverse: null})

  # fragments & pages
  link: DS.belongsTo('entry', {async: true, inverse: null})

  # fragment
  linkText: DS.attr()

  # events
  date: DS.attr('date')

  # newsletter
  file: DS.belongsTo('asset')

  # computed

  titleBreak: Ember.computed 'title',
    get: ->
      return unless @get('title')
      @get('title').replace(' ','<br>')

  linkHref: Ember.computed 'link.contentType', 'link.slug',
    get: ->
      model = @contentful.modelForContentType @get('link.contentType')
      if model is 'section'
        @get('link.slug')

  bodyHTML: Ember.computed 'body',
    get: ->
      return unless @get('body')
      body = @get('body').replace('<table','<table class="table"','g')
      return marked(body).htmlSafe()

  ribbonClass: Ember.computed 'color',
    get: ->
      return unless @get('color')
      "ribbon-#{@get('color')}"

  hasLink: Ember.computed 'link',
    get: -> @get('link')

`export default Entry;`

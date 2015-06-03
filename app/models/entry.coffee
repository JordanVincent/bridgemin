`import DS from "ember-data";`
`import Model from "./model";`

Entry = Model.extend
  image: DS.belongsTo('asset')
  title: DS.attr()
  body: DS.attr()
  slug: DS.attr()

  # pages, sections, fragments
  customTemplate: DS.attr()

  # sections
  pages: DS.hasMany('entry', {async: true, inverse: null})
  fragments: DS.hasMany('entry', {async: true, inverse: null})
  position: DS.attr()
  icon: DS.belongsTo('asset')
  isProgram: DS.attr()
  color: DS.attr()

  # sections, staffMember
  description: DS.attr()

  # pages
  section: DS.belongsTo('entry', {async: true, inverse: null})

  # fragments, pages, news, stories
  link: DS.belongsTo('entry', {async: true, inverse: null})

  # fragment, news, stories
  linkText: DS.attr()

  # events
  date: DS.attr('date')

  # newsletter
  file: DS.belongsTo('asset')

  # equipmentType
  price: DS.attr()
  availability: DS.attr()
  pickUpMethods: DS.attr()

  # story
  type: DS.attr()

  # staffMember
  phoneNumber: DS.attr()
  email: DS.attr()

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

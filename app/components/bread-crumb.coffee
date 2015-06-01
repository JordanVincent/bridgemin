`import Ember from "ember";`

BreadCrumb = Ember.Component.extend
  tagName: 'ol'
  classNames: ['bread-crumb', 'breadcrumb']

  page: Ember.computed 'entry',
    get: ->
      @get('entry') if @get('entry.isPage')

  section: Ember.computed 'page', 'entry',
    get: ->
      if @get('page') then @get('page.section') else @get('entry')

`export default BreadCrumb;`
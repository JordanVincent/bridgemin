`import Ember from 'ember';`

PageRoute = Ember.Mixin.create
  templateName: 'page'

  beforeModel: ->
    promise = @store.find 'entry',
      content_type:'3SWJKtyBoAc8s4m0iYuO64'
      'fields.slug': @get('routeName')
    @set 'modelPromise', promise
    promise

  model: ->
    @get('modelPromise').then (pages) ->
      pages.get('firstObject')

`export default PageRoute;`
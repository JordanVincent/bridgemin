`import Ember from "ember";`

SiteHeader = Ember.Component.extend
  classNames: ['site-header','head']
  classNameBindings: ['minimized']
  autoMinimized: false
  forceMinimized: false

  minimized: Ember.computed 'autoMinimized', 'forceMinimized',
    get: ->
      return true if @get('forceMinimized')
      @get('autoMinimized')

  trackScroll: (->
    $(document).on 'scroll.header', =>
      autoMinimized = $(document).scrollTop() > 0
      @set('autoMinimized', autoMinimized)
  ).on('didInsertElement')

  unTrackScroll: (->
    $(document).off('scroll.header')
  ).on('willDestroyElement')

  actions:
    goTo: (route, model) ->
      @sendAction('goTo', route, model)

`export default SiteHeader;`
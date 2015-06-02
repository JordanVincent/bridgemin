`import Ember from "ember";`

SiteHeader = Ember.Component.extend
  classNames: ['site-header','head']
  classNameBindings: ['minimized']
  minimized: false

  trackScroll: (->
    $(document).scroll =>
      minimized = $(document).scrollTop() > 0
      @set('minimized', minimized)
  ).on('didInsertElement')

  actions:
    goTo: (route, model) ->
      @sendAction('goTo', route, model)

`export default SiteHeader;`
`import Ember from "ember";`

NavBar = Ember.Component.extend
  tagName: 'nav'
  classNames: ['nav-bar','navbar', 'navbar-default']

  enableDropdowns:( ->
    @$().find('.dropdown').on 'hover.navbar', ->
      $(@).addClass('open')
    , ->
      $(@).removeClass('open')
  ).on('didInsertElement')

  disableDropdowns:( ->
    @$().find('.dropdown').off('hover.navbar')
  ).on('willDestroyElement')

  actions:
    goTo: (route, model) ->
      @sendAction('goTo', route, model)

`export default NavBar;`
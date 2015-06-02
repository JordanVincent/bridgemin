`import Ember from "ember";`

NavBar = Ember.Component.extend
  tagName: 'nav'
  classNames: ['nav-bar','navbar', 'navbar-default']

  enableDropdowns:( ->
    @$().find('.dropdown').hover ->
      $(@).addClass('open')
    , ->
      $(@).removeClass('open')
  ).on('didInsertElement')

  actions:
    goTo: (route, model) ->
      @sendAction('goTo', route, model)

`export default NavBar;`
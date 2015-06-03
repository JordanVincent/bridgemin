`import Ember from "ember";`

NavBar = Ember.Component.extend
  tagName: 'nav'
  classNames: ['nav-bar','navbar', 'navbar-default']

  enableDropdowns:( ->
    @$().find('.dropdown').on 'mouseover.navbar', ->
      $(@).addClass('open')
    @$().find('.dropdown').on 'mouseout.navbar', ->
      $(@).removeClass('open')
  ).on('didInsertElement')

  disableDropdowns:( ->
    @$().find('.dropdown').off('mouseover.navbar')
    @$().find('.dropdown').off('mouseout.navbar')
  ).on('willDestroyElement')

  actions:
    goTo: (route, model) ->
      @sendAction('goTo', route, model)

`export default NavBar;`
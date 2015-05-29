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

`export default NavBar;`
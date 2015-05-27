`import Ember from "ember";`

IndexController = Ember.Controller.extend
  needs: ['application']
  fragments: Ember.computed.alias("controllers.application.fragments")

  homeHeroFragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  homeBox1Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  homeBox2Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  homeBox3Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  friendMonthFragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  upcomingEvent: Ember.computed.alias('fragments.firstObject')

  getFragment: (name) ->
    @get('fragments').findBy('slug', name.dasherize().replace('-fragment', ''))

`export default IndexController;`
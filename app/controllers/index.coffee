`import Ember from "ember";`

IndexController = Ember.Controller.extend
  needs: ['application']
  fragments: Ember.computed.alias("controllers.application.fragments")

  # homeBox1Fragments: Ember.computed.filterBy('fragments', 'slug', 'home-box-1')
  # homeBox1Fragment: Ember.computed.alias('homeBox1Fragments.firstObject')

  homeHeroFragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  homeBox1Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  homeBox2Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  homeBox3Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  getFragment: (name) ->
    @get('fragments').findBy('slug', name.dasherize().replace('-fragment', ''))

`export default IndexController;`
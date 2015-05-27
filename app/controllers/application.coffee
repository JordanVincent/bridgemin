`import Ember from "ember";`

ApplicationController = Ember.Controller.extend

  footerBox1Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  footerBox2Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  footerBox3Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  getFragment: (name) ->
    @get('fragments').findBy('slug', name.dasherize().replace('-fragment', ''))

`export default ApplicationController;`
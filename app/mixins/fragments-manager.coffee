`import Ember from "ember";`

FragmentsManager = Ember.Mixin.create
  needs: ['application']
  fragments: Ember.computed.alias("controllers.application.fragments")
  sections: Ember.computed.alias("controllers.application.sections")

  programSections: Ember.computed.filterBy('sections', 'isProgram', true)
  otherSections: Ember.computed.filterBy('sections', 'isProgram', false)

  sectionsSorting: ['position']
  sortedProgramSections: Ember.computed.sort('programSections', 'sectionsSorting')
  sortedOtherSections: Ember.computed.sort('otherSections', 'sectionsSorting')

  headerLink1Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  headerLink2Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  headerButtonFragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  footerBox1Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  footerBox2Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  footerBox3Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

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

  getFragment: (name) ->
    @get('fragments').findBy('slug', name.dasherize().replace('-fragment', ''))

`export default FragmentsManager;`
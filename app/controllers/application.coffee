`import Ember from "ember";`

ApplicationController = Ember.Controller.extend

  programSections: Ember.computed.filterBy('sections', 'isProgram', true)
  otherSections: Ember.computed.filterBy('sections', 'isProgram', false)

  sectionsSorting: ['position']
  sortedProgramSections: Ember.computed.sort('programSections', 'sectionsSorting')
  sortedOtherSections: Ember.computed.sort('otherSections', 'sectionsSorting')

  footerBox1Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  footerBox2Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  footerBox3Fragment: Ember.computed 'fragments.[]',
    get: (name) -> @getFragment(name)

  getFragment: (name) ->
    @get('fragments').findBy('slug', name.dasherize().replace('-fragment', ''))

`export default ApplicationController;`
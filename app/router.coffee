`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'mobilityEquipment', ->
    @route 'getEquipment'
    @route 'giveEquipment'
    @route 'equipmentTypes'
  @route 'newsAndEvents', ->
    @route 'events'
    @route 'newsletter'
    @route 'photoGallery'

`export default Router;`

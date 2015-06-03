`import Ember from "ember";`

EventsController = Ember.Controller.extend
  annualEvents: Ember.computed.filterBy('model', 'isAnnual', true)
  otherEvents: Ember.computed.setDiff('model','annualEvents')

  pastEvents: Ember.computed 'otherEvents.@each.endDate',
    get: ->
      @get('otherEvents').filter (event) ->
        moment().isAfter(event.get('endDate'))

  upcomingEvents: Ember.computed.setDiff('otherEvents','pastEvents')

`export default EventsController;`
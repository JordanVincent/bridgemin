`import Ember from "ember";`
`import FragmentsManagerMixin from "../mixins/fragments-manager";`

IndexController = Ember.Controller.extend FragmentsManagerMixin,

  upcomingEvent: Ember.computed.alias('events.firstObject')
  recentStories: Ember.computed.alias('stories')

`export default IndexController;`
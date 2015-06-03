`import Ember from "ember";`
`import FragmentsManagerMixin from "../mixins/fragments-manager";`

IndexController = Ember.Controller.extend FragmentsManagerMixin,

  upcomingEvent: Ember.computed.alias('events.firstObject')
  recentStory: Ember.computed.alias('stories.firstObject')
  recentNews: Ember.computed.alias('news')

`export default IndexController;`
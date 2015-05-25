`import Ember from "ember";`

ApplicationRoute = Ember.Route.extend
  model: ->
    @store.find('entry', {content_type:'2wKn6yEnZewu2SCCkus4as'})

`export default ApplicationRoute;`
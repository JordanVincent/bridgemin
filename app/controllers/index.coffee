`import Ember from "ember";`

IndexController = Ember.Controller.extend
  needs: ['application']
  fragments: Ember.computed.alias("controllers.application.fragments")

  homeBox1Fragment: ( ->
    @get('fragments.firstObject')
  ).property('fragments')

`export default IndexController;`
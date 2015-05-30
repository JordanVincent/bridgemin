`import Ember from "ember";`

FacebookFeed = Ember.Component.extend

  initFacebook: ( ->
    window.FB.XFBML.parse()
  ).on('didInsertElement')

`export default FacebookFeed;`
`import Ember from "ember";`

BackgroundImage = Ember.Component.extend
  classNames: ['background-image']
  attributeBindings: ['style']

  style: Ember.computed 'image.url',
    get: ->
      "background-image: url(#{@get('image.url')});".htmlSafe()

`export default BackgroundImage;`
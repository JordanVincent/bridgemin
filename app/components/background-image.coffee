`import Ember from "ember";`

BackgroundImage = Ember.Component.extend
  classNames: ['background-image']
  classNameBindings: ['hidden']
  attributeBindings: ['style']

  style: Ember.computed 'image', 'image.url',
    get: ->
      "background-image: url(#{@get('image.url')});".htmlSafe()

  hidden: Ember.computed 'image', 'image.url',
    get: ->
      !@get('image.url')?

`export default BackgroundImage;`
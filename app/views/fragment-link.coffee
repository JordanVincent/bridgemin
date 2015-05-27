`import Ember from "ember";`

FragmentLink = Ember.View.extend
  tagName: 'button'
  classNames: ['fragment-link','btn','btn-primary']
  templateName: 'views/fragment-link'

  click: ->
    @get('controller').send('goTo', @get('fragment.link.contentType'), @get('fragment.link'))

`export default FragmentLink;`
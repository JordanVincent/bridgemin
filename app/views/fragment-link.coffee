`import Ember from "ember";`

FragmentLink = Ember.View.extend
  tagName: 'button'
  classNames: ['fragment-link','btn','btn-primary']
  classNameBindings: ['hidden','isLink:btn-link']
  templateName: 'views/fragment-link'

  hidden: Ember.computed 'fragment.linkText',
    get: ->
      !@get('fragment.linkText')?

  click: ->
    @get('controller')
    .send('goTo', @get('fragment.link.contentType'), @get('fragment.link'))

`export default FragmentLink;`
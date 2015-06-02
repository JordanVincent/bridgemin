`import Ember from "ember";`

EntryLink = Ember.View.extend
  classNames: ['entry-link']
  templateName: 'views/entry-link'
  tagName: 'a'

  click: ->
    @get('controller')
    .send('goTo', @get('entry.contentType'), @get('entry'))

`export default EntryLink;`
`import Ember from "ember";`

InfoGraphic = Ember.Component.extend
  classNames: ['info-graphic', 'content-box']
  classNameBindings: ['isHorizontal:horizontal:vertical']

  facts: Ember.computed 'infographic.fact1Number', 'infographic.fact2Number',
  'infographic.fact3Number', 'infographic.fact1DescriptionHTML',
  'infographic.fact2DescriptionHTML', 'infographic.fact3DescriptionHTML',
    get: ->
      facts = [
        number: @get('infographic.fact1Number')
        descriptionHTML: @get('infographic.fact1DescriptionHTML')
      ,
        number: @get('infographic.fact2Number')
        descriptionHTML: @get('infographic.fact2DescriptionHTML')
      ,
        number: @get('infographic.fact3Number')
        descriptionHTML: @get('infographic.fact3DescriptionHTML')
      ]
      return facts.slice(0, 1) unless @get('infographic.fact2Number')
      return facts.slice(0, 2) unless @get('infographic.fact3Number')
      facts

  isHorizontal: Ember.computed 'infographic.orientation',
    get: ->
      @get('infographic.orientation') is 'horizontal'

`export default InfoGraphic;`
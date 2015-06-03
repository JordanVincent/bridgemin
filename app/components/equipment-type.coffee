`import Ember from "ember";`

EquipmentType = Ember.Component.extend
  classNames: ['equipment-type', 'panel', 'panel-default']
  onlyAvailability: false

  displayPrice: Ember.computed 'price', 'equipmentType.price',
    get: ->
      return @get('price') if @get('price')
      @get('equipmentType.price')

  availabilityColor: Ember.computed 'equipmentType.availability',
    get: ->
      availability = @get('equipmentType.availability')
      switch availability
        when 'good' then 'green'
        when 'fluctuating' then 'orange'
        when 'few' then 'red'

  availabilityLabel: Ember.computed 'equipmentType.availability',
    get: ->
      availability = @get('equipmentType.availability')
      switch availability
        when 'good' then 'Good Supply'
        when 'fluctuating' then 'Fluctuating Supply'
        when 'few' then 'Very Few'

`export default EquipmentType;`
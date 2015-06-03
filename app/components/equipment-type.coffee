`import Ember from "ember";`

EquipmentType = Ember.Component.extend
  classNames: ['equipment-type', 'panel', 'panel-default']

  availabilityColor: Ember.computed 'equipmentType.availability',
    get: ->
      availability = @get('equipmentType.availability')
      switch availability
        when 'good' then 'green'
        when 'fluctuating' then 'orange'
        when 'few' then 'red'

`export default EquipmentType;`
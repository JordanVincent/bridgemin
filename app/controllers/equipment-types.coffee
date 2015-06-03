`import Ember from "ember";`

EquipmentTypesController = Ember.Controller.extend

  requestFormHref: Ember.computed
    get: ->
      subject = encodeURI('Requesting Equipment')
      body = encodeURI('Type of Equipment Requested:')
      "mailto:equipment@bridgemin.org?subject=#{subject}&body=#{body}"

`export default EquipmentTypesController;`
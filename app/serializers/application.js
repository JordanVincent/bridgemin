import DS from "ember-data";

export default DS.JSONSerializer.extend({
  normalizePayload: function(payload) {
    console.log('payload', payload);
    return payload.items;
  },

  normalize: function(typeClass, singlePayload){
    console.log('zasfsdsqdfw', typeClass, singlePayload);

    var normalizedPayload = singlePayload.fields;
    normalizedPayload.id = singlePayload.sys.id;
    return normalizedPayload;
  }

});
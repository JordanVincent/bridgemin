import DS from "ember-data";

export default DS.RESTSerializer.extend({
  normalizePayload: function(payload, a, b) {
    //this.extractRelationships(payload, payload[type.typeKey], type);
    console.log('Pa', payload);

    return payload;
  },

  extractSingle: function(store, primaryTypeClass, rawPayload, recordId) {
    var primaryTypeClassName = primaryTypeClass.modelName;
    var normalizedPayload = {};

    normalizedPayload[primaryTypeClassName] = rawPayload;
    //normalizedPayload[primaryTypeClassName].id = rawPayload.sys.id;
    console.log(normalizedPayload);
    var a = this._super(store, primaryTypeClass, normalizedPayload, recordId);
    console.log(a);
    return a;
  },

  extractArray: function(store, primaryTypeClass, rawPayload) {
    var primaryTypeClassName = primaryTypeClass.modelName;
    var normalizedPayload = {};

    normalizedPayload[primaryTypeClassName] = rawPayload.items;
    console.log(normalizedPayload);
    var a = this._super(store, primaryTypeClass, normalizedPayload);
    console.log(a);
    return a;
  },

  normalize: function(typeClass, singlePayload){
    console.log('Normalize');
    if (!singlePayload){return singlePayload;}


    //console.log('P', typeClass, singlePayload);
    var normalizedPayload = singlePayload.fields;

    // Norm ID
    normalizedPayload.id = singlePayload.sys.id;

    var a = this._super(typeClass, normalizedPayload);
    //console.log("aaaa", a);
    return a;
  },

  normalizeRelationships: function(typeClass, hash) {

    var payloadKey;
    //console.log('qDQ', typeClass, hash);
    if (this.keyForRelationship) {
      typeClass.eachRelationship(function(key, relationship) {
        payloadKey = this.keyForRelationship(key, relationship.kind, 'deserialize');

        if (!hash.hasOwnProperty(payloadKey)) { return; }
        //console.log('rrrrrrrrrrrrrrrrrrr', hash, hash[payloadKey].sys.id);
        hash[key] = hash[payloadKey].sys.id;
        //console.log('rrrrrrrrrrrrrrrrrrr', hash);
      }, this);
    }
  }
});
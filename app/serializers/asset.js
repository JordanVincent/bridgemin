import ApplicationSerializer from "./application";

export default ApplicationSerializer.extend({
  normalize: function(typeClass, singlePayload){
    var normalizedPayload = this._super(typeClass, singlePayload);
    normalizedPayload.url = normalizedPayload.file.url;
    return normalizedPayload;
  }
});
import DS from "ember-data";

export default DS.Model.extend({
  featuredImage: DS.belongsTo('asset', {async: true}),
  title: DS.attr()
});

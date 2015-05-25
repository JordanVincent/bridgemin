`import DS from "ember-data";`

Entry = DS.Model.extend
  featuredImage: DS.belongsTo('asset', {async: true})
  title: DS.attr()
  body: DS.attr()

`export default Entry;`

`import DS from "ember-data";`

Entry = DS.Model.extend
  featuredImage: DS.belongsTo('asset', {async: true})
  pages: DS.hasMany('entry', {async: true})
  title: DS.attr()
  body: DS.attr()
  slug: DS.attr()

`export default Entry;`

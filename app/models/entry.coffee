`import DS from "ember-data";`

Entry = DS.Model.extend
  image: DS.belongsTo('asset', {async: true})
  pages: DS.hasMany('entry', {async: true})
  title: DS.attr()
  body: DS.attr()
  slug: DS.attr()
  customTemplate: DS.attr()
  date: DS.attr('date')

`export default Entry;`

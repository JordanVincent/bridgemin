`import DS from "ember-data";`

Entry = DS.Model.extend
  contentTypeId: DS.attr()

  image: DS.belongsTo('asset', {async: true})
  pages: DS.hasMany('entry', {async: true, inverse: null})
  title: DS.attr()
  body: DS.attr()
  slug: DS.attr()
  customTemplate: DS.attr()
  date: DS.attr('date')

  link: DS.belongsTo('entry', {async: true, inverse: null})
  linkText: DS.attr()

`export default Entry;`

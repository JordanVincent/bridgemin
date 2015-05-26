`import DS from "ember-data";`

Asset = DS.Model.extend
  contentTypeId: DS.attr()
  title: DS.attr()
  url: DS.attr()

`export default Asset;`
`import DS from "ember-data";`

Asset = DS.Model.extend
  title: DS.attr()
  url: DS.attr()

`export default Asset;`
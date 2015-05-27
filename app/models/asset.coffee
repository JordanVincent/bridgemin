`import DS from "ember-data";`
`import Model from "./model";`

Asset = Model.extend
  title: DS.attr()
  url: DS.attr()

`export default Asset;`
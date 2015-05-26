`import DS from "ember-data";`
`import config from '../config/environment';`

contentful = config.contentful

ApplicationAdapter = DS.RESTAdapter.extend
  host: "#{contentful.host}/spaces/#{contentful.spaceId}"
  headers:
    "Authorization": "Bearer #{contentful.apiToken}"

`export default ApplicationAdapter;`
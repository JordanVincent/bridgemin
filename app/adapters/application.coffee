`import DS from "ember-data";`

ApplicationAdapter = DS.RESTAdapter.extend
  host: 'https://cdn.contentful.com/spaces/uuo3xbr82a31'
  headers:
    "Authorization": "Bearer 6ae1a33264be4718edafc309c3e071bd3fa4c890a0db6221197364438bbbd8bf"

`export default ApplicationAdapter;`
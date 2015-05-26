`import config from '../config/environment';`

initializer = (container, application) ->
  contentful =
    contentTypeFor: (model) ->
      config.contentful.model[model]

  application.register('contentful:main', contentful, {instantiate: false, singleton: true})
  application.inject('route', 'contentful', 'contentful:main');


`export default {
  name: 'contentful',
  initialize: initializer
};`
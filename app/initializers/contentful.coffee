`import config from '../config/environment';`

initializer = (container, application) ->
  contentful =
    contentTypeFor: (model) ->
      config.contentful.models[model]

    modelForContentType: (contentTypeId) ->
      for model, id of config.contentful.models
        return model if contentTypeId is id

  application.register('contentful:main', contentful, {instantiate: false, singleton: true})
  application.inject('route', 'contentful', 'contentful:main')
  application.inject('model', 'contentful', 'contentful:main')


`export default {
  name: 'contentful',
  initialize: initializer
};`
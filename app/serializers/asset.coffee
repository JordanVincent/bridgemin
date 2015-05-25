`import ApplicationSerializer from "./application";`

AssetSerializer = ApplicationSerializer.extend
  normalize: (typeClass, singlePayload) ->
    normalizedPayload = @_super(typeClass, singlePayload)
    normalizedPayload.url = normalizedPayload.file.url
    return normalizedPayload

`export default AssetSerializer;`
`import DS from "ember-data";`

ApplicationSerializer = DS.RESTSerializer.extend

  extractSingle: (store, primaryTypeClass, rawPayload, recordId) ->
    primaryTypeClassName = primaryTypeClass.modelName
    normalizedPayload = {}

    normalizedPayload[primaryTypeClassName] = rawPayload

    @_super(store, primaryTypeClass, normalizedPayload, recordId)

  extractArray: (store, primaryTypeClass, rawPayload) ->
    primaryTypeClassName = primaryTypeClass.modelName
    normalizedPayload = {}

    normalizedPayload[primaryTypeClassName] = rawPayload.items

    if rawPayload.includes
      normalizedPayload['asset']  = rawPayload.includes.Asset if rawPayload.includes.Asset
      normalizedPayload['_entry'] = rawPayload.includes.Entry if rawPayload.includes.Entry

    @_super(store, primaryTypeClass, normalizedPayload)

  normalize: (typeClass, singlePayload) ->
    return singlePayload unless singlePayload

    normalizedPayload = singlePayload.fields

    # Norm ID
    normalizedPayload.id = singlePayload.sys.id

    # Sys attributes
    normalizedPayload.contentTypeId = singlePayload.sys.contentType?.sys.id
    normalizedPayload.createdAt = singlePayload.sys.createdAt
    normalizedPayload.updatedAt = singlePayload.sys.updatedAt

    @_super(typeClass, normalizedPayload)

  normalizeRelationships: (typeClass, hash) ->
    payloadKey = undefined

    if @keyForRelationship
      typeClass.eachRelationship (key, relationship) =>
        payloadKey = @keyForRelationship(key, relationship.kind, 'deserialize')

        return unless hash.hasOwnProperty(payloadKey)

        if Array.isArray(hash[payloadKey])
          hash[key] = hash[payloadKey].map (item) ->
            item.sys.id
        else
          hash[key] = hash[payloadKey]?.sys.id

`export default ApplicationSerializer;`
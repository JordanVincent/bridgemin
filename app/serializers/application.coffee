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

    @_super(store, primaryTypeClass, normalizedPayload)

  normalize: (typeClass, singlePayload) ->
    return singlePayload unless singlePayload

    normalizedPayload = singlePayload.fields

    # Norm ID
    normalizedPayload.id = singlePayload.sys.id

    # Norm ContentType
    normalizedPayload.contentTypeId = singlePayload.sys.contentType.sys.id

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
          hash[key] = hash[payloadKey].sys.id

`export default ApplicationSerializer;`
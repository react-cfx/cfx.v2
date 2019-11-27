cfxify = (createFactoryOrElement, type = 'createFactory') =>
  switch type
    when 'createFactory'
    then (e) => createFactoryOrElement e
    when 'createElement'
    then(
      (args...) =>
        createFactoryOrElement.apply null
        , [
          args...
          e
        ]
    )

cfxifys = (_cfxify) =>

  (tags) ->

    self = @

    return {} if (typeof tags) is not 'Object'

    (
      Object.keys tags
    )
    .reduce (r, c) =>
      {
        r...
        [c]: _cfxify tags[c]
      }
    , {
      (
        if self?
        then self
        else {}
      )...
      cfxifys
    }

export {
  cfxify
}
export default cfxifys

cfxify = (createFactoryOrElement) =>
  key = (
    Object.keys createFactoryOrElement
  )[0]
  value = createFactoryOrElement[key]

  switch key
    when 'createFactory'
    then (e) => value e
    when 'createElement'
    then(
      (e) => (args...) =>
        value.apply null
        , [
          e
          args...
        ]
    )
    else
      throw new Error 'CFX conf isnt correct.'

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

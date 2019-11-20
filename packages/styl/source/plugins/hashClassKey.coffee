# import dd from 'ddeyes'
import hash from 'object-hash'

export default =>

  (style, actionPoint) =>

    # dd 'hashClassKey'

    return unless actionPoint is 'hashClassKey'

    (
      Object.keys style
    )
    .reduce (r, c) =>
      hashClassKey = "#{c}-#{((hash style[c]).split '')[0..5].join ''}"
      hashClassKeys: {
        r.hashClassKeys...
        [c]: ".#{hashClassKey}"
      }
      cfstyls: {
        r.cfstyls...
        [hashClassKey]: style[c]
      }
    ,
      hashClassKeys: {}
      cfstyls: {}

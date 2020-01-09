# import dd from 'ddeyes'
import hash from 'hash-sum'
import { camelToSlash } from '../classKey'

export default =>

  (style, actionPoint) =>

    # dd 'hashClassKey'

    return unless actionPoint is 'hashClassKey'
    
    splitA = (s, splitSymbol) =>
      (
        s.split splitSymbol
      )[0]

    (
      Object.keys style
    )
    .reduce (r, c) =>

      _c = splitA c, ' '
      _c = splitA _c, '--'
      _c = splitA _c, '__'

      hashKey =
        (
          hash style[c]
        )
        .replace '-', ''

      hashClassKey = "#{camelToSlash _c}-#{hashKey}"

      {
        r...
        [hashClassKey]: style[c]
      }
    , {}

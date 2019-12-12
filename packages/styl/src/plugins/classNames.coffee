# import dd from 'ddeyes'
import { last } from '../util'

export default =>

  (classNames, actionPoint) =>

    # dd 'classNames'

    return unless actionPoint is 'classNames'

    classNames.reduce (r, c) =>
      _lastClass = last r
      lastClass = do =>
        if r.length is 1
          arr = _lastClass.split '-' 
          if _lastClass.includes '-'
            arr[0..arr.length - 2]
            .join '-'
        else _lastClass
      [
        r...
        c.split ''
        .reduce (_r, _c, _i)  =>
          [
            _r...
            (
              if _c is '&'
              then [ lastClass ]
              else(
                if (
                  _i is 0
                ) and (
                  _c is ':'
                )
                then [ "#{lastClass}#{_c}" ]
                else [ _c ]
              )
            )...
          ]
        , []
        .join ''
      ]
    , []

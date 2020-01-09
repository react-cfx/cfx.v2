# import dd from 'ddeyes'
import { last } from '../util'

withoutHash = (str) =>
  return str unless str.includes '-'
  arr = str.split '-'
  arr[0..arr.length - 2]
  .join '-'

checkClassNames = (klass, symbol, current) =>
  arr = (
    klass.split symbol
  )
  .filter (t) =>
    if t is ''
    then false
    else true

  if arr.length is 2
  then(
    # dd {
    #   arr: arr[0]
    #   current
    #   bool: arr[0] is current
    # }
    arr[0] is current
  )
  else false

getLastClass = (
  classes
  cb = (args...) => args[0] 
) =>
  return '' if classes is ''
  arr = (
    classes.split '.'
  )
  .filter (t) =>
    if t is ''
    then false
    else true

  cb (
    if arr.length is 0
    then ''
    else ".#{arr[arr.length - 1]}"
  )
  , arr.length

export default =>

  (classNames, actionPoint) =>

    # dd 'classNames'

    return unless actionPoint is 'classNames'

    classNames.reduce (r, c) =>

      _lastClass =
        if r.length >= 1 
        then last r
        else ''

      lastClass = getLastClass _lastClass
      , (klass, arrLength) =>
        if ( arrLength is 1 ) and (
          r.length is 1
        )
        then withoutHash klass
        else klass

      _c =
        if (
          c.split ''
        )[0] is '&'
        then c.replace '&', lastClass
        else c
      _c =
        if _c.includes '&'
        then _c.replace /.&/g, lastClass
        else _c
      _c = "#{lastClass}#{_c}" if (_c.split '')[0] is ':'

      arr = _c.split '.'
      check_c =
        if arr.length > 2
        then ".#{arr[0..1].join ''}"
        else _c

      if (
        check_c.includes '--'
      ) or (
        check_c.includes ':'
      )
      then [
        (
          if r.length is 1
          then []
          else r[0..r.length - 2]
        )...
        (
          if (
            checkClassNames check_c, '--', lastClass
          ) or (
            checkClassNames check_c, ':', lastClass
          )
          then(
            [
              if r.length is 1
              then(
                arr = _lastClass.split '.'
                if(
                  arr
                  .filter (t) =>
                    if t is ''
                    then false
                    else true
                  .length >= 2
                )
                then(
                  "#{
                    arr[0..arr.length - 2]
                    .join '.'
                  }#{_c}"
                )
                else "#{_lastClass}#{_c}"
              )
              else _c
            ]
          )
          else(
            if _c.includes '__'
            then [
              _lastClass
              _c
            ]
            else [ "#{_lastClass}#{_c}" ]
          )
        )...
      ]
      else [
        r...
        _c
      ]

    , []

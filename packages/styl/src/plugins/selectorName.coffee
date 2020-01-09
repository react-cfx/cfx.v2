# import dd from 'ddeyes'

import {
  classKey 
  isChar
} from '../classKey'

export default =>

  (selectorName, actionPoint) =>

    # dd 'selectorName'

    return unless actionPoint is 'selectorName'

    # splitA = (s, splitSymbol) =>
    #   (
    #     s.split splitSymbol
    #   )[0]

    # removeLastHash = (c) =>
    #   arr = c.split '-'
    #   arr
    #   # arr[0..(arr.length - 2)]
    #   .slice 0, arr.length - 1
    #   .join '-'

    # splitByDubleSuffix = (c, splitSymbol) =>
    #   unless splitSymbol
    #     return
    #       body: c
    #       suffix: ''
    #   arr = c.split splitSymbol
    #   if arr.length isnt 2
    #     return
    #       body: c
    #       suffix: ''
    #   body: arr[0]
    #   suffix: "#{splitSymbol}#{arr[1]}"

    _selectorName = selectorName.replace ' &', ' .&'
    _selectorName = classKey _selectorName

    arr = _selectorName.split '-'
    str = "#{arr[arr.length - 2]}#{arr[arr.length - 1]}"
    _arr = str.split ''
    if ( _arr.length is 8 ) and (
      _arr.every (s) =>
        s.match /[0-9,a-z]/
    )
      _selectorName = "#{arr[0..arr.length - 3].join '-'}-#{str}"

    if isChar _selectorName.charAt 0
    then ".#{_selectorName}"
    else _selectorName

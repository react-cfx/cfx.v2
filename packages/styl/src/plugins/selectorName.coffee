# import dd from 'ddeyes'

import {
  classKey 
  isChar
} from '../classKey'

export default =>

  (selectorName, actionPoint) =>

    # dd 'selectorName'

    return unless actionPoint is 'selectorName'

    splitA = (s, splitSymbol) =>
      (
        s.split splitSymbol
      )[0]

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

    _selectorName = splitA selectorName, ' '
    _selectorName = classKey _selectorName

    if isChar _selectorName.charAt 0
    then ".#{_selectorName}"
    else _selectorName

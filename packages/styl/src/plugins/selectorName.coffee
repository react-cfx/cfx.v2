# import dd from 'ddeyes'

import {
  classKey 
  isChar
} from '../classKey'

export default =>

  (selectorName, actionPoint) =>

    # dd 'selectorName'

    return unless actionPoint is 'selectorName'

    _selectorName = classKey selectorName

    if isChar _selectorName.charAt 0
    then ".#{_selectorName}"
    else _selectorName

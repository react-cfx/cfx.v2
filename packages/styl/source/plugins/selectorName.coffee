# import dd from 'ddeyes'

import {
  classKey 
} from '../classKey'

export default =>

  (selectorName, actionPoint) =>

    # dd 'selectorName'

    return unless actionPoint is 'selectorName'

    ".#{classKey selectorName}"

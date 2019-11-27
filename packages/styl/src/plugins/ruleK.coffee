# import dd from 'ddeyes'

import {
  classKey
} from '../classKey'

export default =>

  (ruleK, actionPoint) =>

    # dd 'ruleK'

    return unless actionPoint is 'ruleK'

    classKey ruleK  

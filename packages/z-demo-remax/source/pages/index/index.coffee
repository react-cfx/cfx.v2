import CFX from '../../utils/cfx'
import { useShow } from 'remax'

import {
  View
  Text
} from 'remax/wechat'

C = CFX {
  View
  Text
}

export default =>

  C.View {}
  ,
    C.Text {}
    , 'Hello World!!!'

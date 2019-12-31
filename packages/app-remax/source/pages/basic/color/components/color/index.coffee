import {
  View
  Text
} from 'remax/wechat'

import CFX from '../../../../../utils/cfx'
import CFS from '../../../../../utils/cfs'

import styl from 'cfx.styl'
import style from './index.cfs'

import './index.cfs.css'

S = CFS {
  styl
  style
}

C = CFX {
  View
  Text
}

export default (props) =>

  {
    _k
    color
  } = props

  C.View
    className: S.color
    key: _k
  ,

    C.View
      className: 'circle'
      style:
        background: color.hex
    ,
      C.View
        className: 'inner-circle-1'
      
      C.View
        className: 'inner-circle-2'
        style:
          borderColor: color.hex

    C.View
      className: 'color__info'
    ,
      C.Text
        className: 'name'
      , color.name

      C.Text
        className: 'hex'
        selectable: true
      , color.hex

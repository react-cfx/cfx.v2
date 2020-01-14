import {
  View
} from 'remax/wechat'

import CFX from '../../utils/cfx'
import CFS from '../../utils/cfs'

import styl from 'cfx.styl'
import style from './index.cfs'

import './index.cfs.css'

S = CFS {
  style
  styl
}

C = CFX {
  View
}

export default ({
  color = ''
  size = 0
}) =>

  loadingSize =
    if (typeof size) is 'string'
    then size
    else "#{size}"

  sizeStyle =
    width: loadingSize
    height: loadingSize

  colorStyle =
    border:
      if color
      then "1px solid #{color}"
      else ''
    'border-color':
      if color
      then "#{color} transparent transparent transparent"
      else ''

  ringStyle = {
    colorStyle...
    sizeStyle...
  }

  C.View
    className: 'at-loading'
    style: sizeStyle
  ,
    [1..3].map =>
      C.View
        className: 'at-loading__ring'
        style: ringStyle

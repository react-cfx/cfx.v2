import {
  View
} from 'remax/wechat'

import CFX from '../../../utils/cfx'
import CFS from '../../../utils/cfs'

import styl from 'cfx.styl'
import style from './index.cfs'

import './index.cfs.css'

S = CFS {
  styl
  style
}

C = CFX {
  View
}

export default (props) =>

  {
    _k
    title
    children
  } = props

  C.View
    className: S.panel
    key: _k
  ,
    C.View
      className: 'panel__title'
    , title

    C.View
      className: 'panel__content'
    , children

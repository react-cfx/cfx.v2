import {
  View
} from 'remax/wechat'

import DocHeader from '../doc-header'

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
  DocHeader
}

export default (props) =>

  {
    _k
    title
    children
  } = props
  
  C.View
    key: _k
    className: 'page'
  ,

    C.DocHeader {
      title
    }
  
    C.View
      className: S.docBody
    , children

import { useShow } from 'remax'
import { View } from 'remax/wechat'

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

  { title } = props
  title = '标题' unless title?

  C.View
    className: S.docHeader
  ,
    C.View
      className: 'doc-header__title'
    , title

import {
  View
} from 'remax/wechat'

import DocPage from '../../components/doc-page'
import DocPanel from '../../components/doc-panel'
import Color from './components/color'

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
  Color
  DocPage
  DocPanel
}

import colors from './colors'

export default =>

  title = 'Color 颜色' 

  C.DocPage {
    _k: title
    title
  }
  ,
    colors.map (item, i) =>
      C.DocPanel
        _k: item.type
        title: item.type
      ,
        C.View
          className: S.colorList
        ,
          item.data.map (color, _i) =>
            C.Color {
              _k: "#{i}_#{color.hex.replace '#', ''}_#{_i}"
              color
            }

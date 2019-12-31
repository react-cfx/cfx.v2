import {
  View
} from 'remax/wechat'

import DocPage from '../../components/doc-page'
import DocPanel from '../../components/doc-panel'

import AtIcon from '../../../components/icon/index'

import CFX from '../../../utils/cfx'
import CFS from '../../../utils/cfs'

import styl from 'cfx.styl'
import style from './index.cfs'

import './index.cfs.css'

C = CFX {
  View
  AtIcon
  DocPage
  DocPanel
}

S = CFS {
  styl
  style
}

import icons from './icons'

iconColor = '#999'
iconSize = 30

export default =>

  title = 'ICON 图标'

  C.DocPage {
    _k: title
    title
  }
  ,
    C.DocPanel
      title: '主要'
    ,

      C.View
        className: S.iconList
      ,
        icons.main.map (icon, index) =>

          C.View
            className: 'icon-list__item'
            key: "at-icon-#{index}"
          , 
            C.View
              className: 'icon-list__icon'
            ,
              C.AtIcon
                value: icon
                color: iconColor
                size: iconSize
            
            C.View
              className: 'icon-list__name'
            , icon

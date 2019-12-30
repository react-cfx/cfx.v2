import React, {
  useState
  useEffect
} from 'react'

import { View } from 'remax/wechat'
import AtIcon from '../../../components/icon/index'
import data from './data'

import CFX from '../../../utils/cfx'
import CFS from '../../../utils/cfs'

import styl from 'cfx.styl'
import style from './index.cfs'

import './index.cfs.css'

C = CFX {
  View
  AtIcon
}

S = CFS {
  styl
  style
}

iconColor = '#999'
iconSize = 30

export default (props) =>

  C.View
    className: 'page'
  ,
    C.View
    , 'ICON 图标'

    C.View
      className: 'doc-body'
    ,
      C.View
        className: 'panel'
      ,
        C.View
          className: 'panel__title'
        , '主要'
        C.View 
          className: 'panel__content'
        ,
          C.View
            className: S.iconList
          ,
            data.main.map (icon, index) =>
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
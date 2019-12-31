import clsx from 'clsx'

import DocsHeader from '../../components/doc-header'

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
  DocsHeader
}

S = CFS {
  styl
  style
}


export default (props) =>

  C.View
    className: 'page'
  ,
    C.DocsHeader
      title: 'ICON 图标'

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
                
                C.View
                  className: 'icon-list__name'
                , icon
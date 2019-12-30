import React, {
  useState
  useEffect
} from 'react'
import clsx from 'clsx'

import {
  View
  Text
} from 'remax/wechat'

import CFX from '../../../utils/cfx'
import CFS from '../../../utils/cfs'

import styl from 'cfx.styl'
import style from './index.cfs'
import './index.cfs.css'

import AtButton from '../../../components/button'

C = CFX {
  AtButton
  View
}

S = CFS {
  style
  styl
}

export default () =>
  click = () =>
    console.log 'hello'
  C.View
    className: 'page'
  ,
    C.View {}
    , 'Button 按钮'

    C.View
      className: 'doc-body'
    ,
      C.View
        className: 'panel'
      ,
        C.View
          className: 'panel__title'
        , '主操作'
        C.View
          className: 'panel__content'
        ,
          C.View
            className: S.btnItem
          ,
            C.AtButton
              type: 'primary'
              onClick: click
            , '主操作按钮'
          C.View
            className: S.btnItem
          ,
            C.AtButton
              type: 'primary'
              loading: true
              onClick: click
            , 'Loading'
          C.View
            className: S.btnItem
          ,
            C.AtButton
              type: 'primary'
              disabled: true
              onClick: click
            , '不可操作'
      C.View
        className: 'panel'
      ,
        C.View
          className: 'panel__title'
        , '小按钮'
        C.View
          className: 'panel__content'
        ,
          C.View
            className: S.btnItem
          ,
            C.View
              className: 'subitem'
            ,
              C.AtButton
                type: 'primary'
                size: 'small'
                onClick: click
              , '按钮'
            C.View
              className: 'subitem'
            ,
              C.AtButton
                type: 'secondary'
                size: 'small'
                onClick: click
              , '按钮'
      C.View
        className: 'panel'
      ,
        C.View
          className: 'panel__title'
        , '圆角按钮'
        C.View
          className: 'panel__content'
        ,
          C.View
            className: S.btnItem
          ,
            C.View
              className: 'subitem'
            ,
              C.AtButton
                type: 'primary'
                size: 'small'
                circle: true
                onClick: click
              , '按钮'
            C.View
              className: 'subitem'
            ,
              C.AtButton
                type: 'secondary'
                size: 'small'
                circle: true
                onClick: click
              , '按钮'
            
            
         
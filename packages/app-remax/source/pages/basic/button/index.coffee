import {
  View
} from 'remax/wechat'

import DocPage from '../../components/doc-page'
import DocPanel from '../../components/doc-panel'

import AtButton from '../../../components/button'

import CFX from '../../../utils/cfx'
import CFS from '../../../utils/cfs'

import styl from 'cfx.styl'
import style from './index.cfs'

import './index.cfs.css'

C = CFX {
  View
  DocPage
  DocPanel
  AtButton
}

S = CFS {
  style
  styl
}

export default () =>

  click = () =>
    console.log 'hello'

  title = 'Button 按钮'

  C.DocPage {
    _k: title
    title
  }
  ,
    C.DocPanel
      title: '主操作'
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

    C.DocPanel
      title: '小按钮'
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

    C.DocPanel
      title: '圆角按钮'
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

import clsx from 'clsx'

import {
  View
} from 'remax/wechat'

import DocPage from '../../components/doc-page'
import DocPanel from '../../components/doc-panel'

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
  DocPage
  DocPanel
}

import typos from './typos'

export default =>

  title = 'Typography 字体'

  C.DocPage {
    _k: title
    title
  }
  ,
    C.DocPanel
      title: '示例'
    ,

      C.View
        className: S.tableTypo
      ,

        C.View
          className: 'table-typo__head'
        ,
          C.View
            className: 'thead'
          , '类型'
          C.View
            className: 'thead'
          , '行高'
          C.View
            className: 'thead'
          , '用途'

        C.View
          className: 'table-typo__body'
        ,
          typos.map (c, i) =>
            C.View
              className: 'table-typo__line'
            ,
              C.View
                className: clsx [
                  'col'
                  S["h#{i}"]
                ]
              , c.type
              C.View
                className: 'col'
              , c.lineHeight
              C.View
                className: 'col'
              , c.purpose

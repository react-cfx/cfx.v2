import { useShow } from 'remax'
import clsx from 'clsx'

import {
  View
} from 'remax/wechat'

import DocsHeader from '../../components/doc-header'

import CFX from '../../../utils/cfx'
import CFS from '../../../utils/cfs'

import styl from 'cfx.styl'
import style from './index.cfs'

import typos from './typos'
import './index.cfs.css'

S = CFS {
  styl
  style
}

C = CFX {
  View
  DocsHeader
}

export default =>

  C.View
    className: 'page'
  ,
    C.DocsHeader
      title: 'Typography 字体'

    C.View
      className: 'doc-body'
    ,
      C.View
        className: 'panel'
      ,
        C.View
          className: 'panel__title'
        , '示例'
        C.View
          className: 'panel__content'
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
              typos.reduce (r, c, i) =>
                [
                  r...
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
                ]
              , []

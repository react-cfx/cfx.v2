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
import { colorData } from './data'
import './index.cfs.css'

S = CFS {
  styl
  style
}

C = CFX {
  View
  Text
}

export default (props) =>

  C.View
    className: 'page'
  ,
    C.Text {}
    , 'Color 颜色'
  
  C.View
    className: 'doc-body'
  ,
    colorData.map (item) =>

      C.View
        className: 'panel'
        key: item.type
      ,
        C.View
          className: 'panel__title'
        , item.type

        C.View
          className: 'panel__content'
        ,
          C.View
            className: S.colorList
          ,
            item.data.map (color) =>

              C.View
                className: S.colorItem
                key: color.hex
              ,

                C.View
                  className: 'circle'
                  style:
                    background: color.hex
                ,
                  C.View
                    className: 'inner-circle-1'
                  
                  C.View
                    className: 'inner-circle-2'
                    style:
                      borderColor: color.hex

                C.View
                  className: 'color-item__info'
                ,
                  C.Text
                    className: 'name'
                  , color.name

                  C.Text
                    className: 'hex'
                    selectable: true
                  , color.hex

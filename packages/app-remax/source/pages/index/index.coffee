import { useShow } from 'remax'
import clsx from 'clsx'

import CFX from '../../utils/cfx'
import CFS from '../../utils/cfs'

import menuData, { logoImg } from './data'

import {
  View
  Text
  Image
  navigateTo
} from 'remax/wechat'

import styl from 'cfx.styl'
import style from './index.cfs'

import './index.cfs.css'

S = CFS {
  styl
  style
}

C = CFX {
  View
  Text
  Image
}

export default =>

  gotoPanel = (c) =>
    { id } = c
    navigateTo
      url: "../panel/index?id=#{id.toLowerCase()}"

  C.View
    className: clsx [
      'page'
      S.pageIndex
    ]
  ,
    C.View
      className: 'logo'
    ,
      C.Image
        className: 'img'
        src: logoImg
        mode: 'widthFix'

    C.View
      className: 'page-title'
    , 'Taro UI For CFX Remax'

    C.View
      className: 'module-list'
    ,
      menuData.reduce (r, c, i) =>
        [
          r...
          C.View
            className: 'module-list__item'
            key: i
            onClick: (e) => gotoPanel c, i, e
          ,
            C.View
              className: 'module-list__icon'
            ,
              C.Image
                className: 'img'
                src: c.icon
                mode: 'widthFix'
            C.View
              className: 'module-list__info'
            ,
              C.View
                className: 'title'
              , c.title
              C.View
                className: 'content'
              , c.content
            C.View
              className: 'module-list__arrow'
            ,
              C.Text
                className: clsx [
                  'at-icon'
                  'at-icon-chevron-right'
                ]
        ]
      , []

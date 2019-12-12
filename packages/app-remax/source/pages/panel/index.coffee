import React, {
  useState
  useEffect
} from 'react'

import { useShow } from 'remax'
import CFX from '../../utils/cfx'
import CFS from '../../utils/cfs'

import clsx from 'clsx'
import styl from 'cfx.styl'
import style from './index.cfs'

import './index.cfs.css'

import {
  list
  panelNames
} from './data'

import {
  View
  Text
  Image
  navigateTo 
} from 'remax/wechat'

C = CFX {
  View
  Text
  Image
}

S = CFS {
  styl
  style
}

export default (props) =>
  [
    currentId
    setCurrentId
  ] = useState ''
  [
    itemList
    setItemList
  ] = useState []
  [
    title 
    setTitle
  ] = useState ''
  [
    icon
    setIcon
  ] = useState ''

  useEffect =>

    { id } = props.location.query

    setItemList list[id]
    setTitle panelNames[id] and panelNames[id].name
    setIcon panelNames[id] and panelNames[id].icon
    setCurrentId id.toLowerCase()

  gotoComponent = (c, e) =>
    {
      id
      parent
    } = c

    navigateTo
      url: "/pages/#{parent.toLowerCase()}/#{id.toLowerCase()}/index"

  C.View 
    className: 'page'
  ,

    # Header
    C.View
      className: S.panelHeader
    ,
      C.View
        className: 'panel-header__icon'
      ,
        if icon?
        then(
          C.Image
            src: icon
            className: 'img'
            mode: 'widthFix'
        )
        else(
          C.Text
            className: clsx [
              'at-icon'
              'at-icon-list'
            ]
        )
      C.View
        className: 'panel-header__title'
      , title

    # Body
    C.View
      className: S.panelBody
    ,
      C.View
        className: S.componentList
      ,
        itemList.reduce (r, c, i) =>
          [
            r...
            C.View
              className: 'component-list__item'
              key: c.id
              onClick: (e) => gotoComponent
                id: c.id
                parent: currentId
              , e
            ,
              C.Text
                className: 'name'
              , "#{c.id} #{c.name}"
              C.Text
                className: clsx [
                  'at-icon'
                  'at-icon-chevron-right'
                ]
              , ''
          ]
        , []

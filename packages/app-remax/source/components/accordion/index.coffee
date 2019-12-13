import React, { useState, useEffect } from 'react'
import {
  View
  Text
} from 'remax/wechat'
import clsx from 'clsx'
import CFX  from '../../utils/cfx'
import CFS from '../../utils/cfs'

C = CFX {
  View
  Text
}

useClass = (klass, bool) =>
  if bool
  then [ klass ]
  else []

export default (props) =>
  [ 
    wrapperHeight
    setWrapperHeight
  ] = useState ''

  isCompleted = true
  startOpen = false

  handleClick = (event) =>
    { open } = props
    if !isCompleted
      return
    props.onClick !open, event
  
  toggleWithAnimation = () => 
    {
      open
      isAnimation
    } = props

    if !isCompleted or isAnimation
      return

    isCompleted = false 
  
  useEffect () =>
    unless open is props.open
      startOpen = open and isAnimation
      toggleWithAnimation()
  , [ props.open, props.isAnimation ]

  {
    customStyle
    className
    title
    icon
    hasBorder
    open
    note
  } = props

  rootCls = clsx [
    'at-accordion'
    className
  ]

  prefixClass = (
    icon and prefixClass
  ) or "at-icon"

  iconCls = clsx [
    prefixClass
    (
      useClass "#{prefixClass}-#{icon and icon.value}"
      , icon and icon.value
    )...
    'at-accordion__icon'
  ]
  
  headerCls = clsx [
    'at-accordion__header'
    (
      useClass 'at-accordion__header--noborder'
      , !hasBorder
    )...
  ]
  
  arrowCls = clsx [
    'at-accordion__arrow'
    (
      useClass 'at-accordion__arrow--folded'
      , !!open
    )...
  ]
  
  contentCls = clsx [
    'at-accordion__content'
    (
      useClass 'at-accordion__content--inactive'
      ,
        (!open and isCompleted) or startOpen
    )...
  ]

  iconStyle = 
    color: (icon and icon.color) or ''
    fontSize: (icon and "#{icon.size}px") or ''

  contentStyle = { height: "#{wrapperHeight}px" }
  contentStyle.height = '' if isCompleted
  
  C.View
    className: rootCls
    style: customStyle
  ,
    C.View
      className: headerCls
      onClick: handleClick
    ,
      icon and icon.value and C.Text
        className: iconCls
      
      C.View
        className: 'at-accordion__info'
      ,
        C.View
          className: 'at-accordion__info__title'
        , title

        C.View
          className: 'at-accordion__info__note'
        , note
      
      C.View
        className: arrowCls
      ,
        C.Text
          className: 'at-icon at-icon-chevron-down'

    C.View
      style: contentStyle
      className: contentCls
    ,
      C.View
        className: 'at-accordion__body'
      , props.children

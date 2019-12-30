import React, { useState, useEffect} from 'react'
import clsx from 'clsx'

import CFX  from '../../utils/cfx'
import CFS from '../../utils/cfs'

import mergeStyle from '../../common/components'

import styl from 'cfx.styl'
import style from './index.cfs'
import './index.cfs.css'
import {
  Text
} from 'remax/wechat'

S = CFS {
  style
  styl
}

C = CFX {
  Text
}

customStyle = ''
className = ''
prefixClass = 'at-icon'
value = ''
color = ''
size = 24
onClick = () => {}

export default (props) =>
  {
    customStyle
    className
    prefixClass = 'at-icon'
    value
    size
    color  
   } = props

  handleClick = () =>
    props.onClick()

  rootStyle = {
    color
  }
  iconName = if value then "#{prefixClass}-#{value}" else ''

  C.Text
    className:
      clsx(
        prefixClass
        iconName
        className
      )
    style: mergeStyle rootStyle, customStyle
    onClick: handleClick

import React, {
  useState
  useEffect
} from 'react'
import clsx from 'clsx'

import {
  View
  Text
  Button
  Form
} from 'remax/wechat'

import CFX from '../../utils/cfx'
import CFS from '../../utils/cfs'

import styl from 'cfx.styl'
import style from './index.cfs'

import './index.cfs.css'

S = CFS {
  style
  styl
}

C = CFX {
  View
  Text
  Button
  Form
}

SIZE_CLASS = 
  normal: 'normal'
  small: 'small'

TYPE_CLASS =
  primary: 'primary'
  secondary: 'secondary'

export default (props) =>
  onClick = () =>
    if !props.disabled
      props.onClick

  onGetUserInfo = () => 
    props.onGetUserInfo

  onContact = () => 
    props.onContact

  onGetPhoneNumber = () => 
    props.onGetPhoneNumber

  onError = () => 
    props.onError

  onOpenSetting = () => 
    props.onOpenSetting

  onSubmit = () =>
    console.log 'submit'
    # this.$scope.triggerEvent('submit', arguments[0].detail, {
    #   bubbles: true,
    #   composed: true,
    # })

  onReset = () => 
    console.log 'reset'
    # this.$scope.triggerEvent('reset', arguments[0].detail, {
    #   bubbles: true,
    #   composed: true,
    # })
  
  {
    size = 'normal'
    type = ''
    circle
    full
    loading
    disabled
    customStyle
    formType
    openType
    lang
    sessionFrom
    sendMessageTitle
    sendMessagePath
    sendMessageImg
    showMessageCard
    appParameter
  } = props

  rootClassName = [ S.atButton ]
  classObject = 
    # ["at-button--#{SIZE_CLASS[size]}"]: SIZE_CLASS[size]
    'at-button--disabled': disabled
    'at-button--circle': circle
    'at-button--full': full
  loadingColor = 
    if type is 'primary' then '#fff' else ''
  loadingSize =  if size is 'small' then '30' else 0
  if loading
    component = 
      C.View 
        className: 'at-button__icon'
      # <View className='at-button__icon'><AtLoading color={loadingColor} size={loadingSize} /></View>
    rootClassName.push 'at-button--icon'

  typeButton = if type is 'primary' then S.atButtonPrimary else S.atButtonSecondary

  button = 
    C.Button
      className: 'at-button__wxbutton'
      formType: formType
      openType: openType
      lang: lang
      sessionFrom: sessionFrom
      sendMessageTitle: sendMessageTitle
      sendMessagePath: sendMessagePath
      sendMessageImg: sendMessageImg
      showMessageCard: showMessageCard
      appParameter: appParameter
      onGetUserInfo: onGetUserInfo
      onGetPhoneNumber: onGetPhoneNumber
      onOpenSetting: onOpenSetting
      onError: onError
      onContact: onContact
  
  C.View
    className: clsx rootClassName, classObject, props.className, typeButton
    style: customStyle
    onClick: onClick
  ,
    !disabled and C.Form {
      reportSubmit: true
      onSubmit: onSubmit
      onReset: onReset
    }
    , button
    component
    C.View
      className: 'at-button__text'
    , props.children
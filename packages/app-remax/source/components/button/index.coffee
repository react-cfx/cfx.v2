import clsx from 'clsx'

import {
  View
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
  Button
  Form
}

SIZE_CLASS = 
  normal: 'normal'
  small: 'small'

TYPE_CLASS =
  primary: 'primary'
  secondary: 'secondary'

export default ({
  loading
  disabled
  circle
  full

  size = 'normal'
  type = ''

  onClick

  className
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

  children
}) =>

  # onGetUserInfo = (e) => 
  #   props.onGetUserInfo and (
  #     props.onGetUserInfo e
  #   )

  # onContact = (e) => 
  #   props.onContact and (
  #     props.onContact e
  #   )

  # onGetPhoneNumber = (e) => 
  #   props.onGetPhoneNumber and (
  #     props.onGetPhoneNumber e
  #   )

  # onError = (e) => 
  #   props.onError and (
  #     props.onError e
  #   )

  # onOpenSetting = (e) => 
  #   props.onOpenSetting and (
  #     props.onOpenSetting e
  #   )

  # onSubmit = (e) =>
  #   props.onSubmit and (
  #     props.onSubmit e
  #   )

  # onReset = (e) => 
  #   props.onReset and (
  #     props.onReset e
  #   )
  
  rootClassName = [ S.atButton ]

  classObject =
    ["at-button--#{SIZE_CLASS[size]}"]: SIZE_CLASS[size]
    'at-button--disabled': disabled
    'at-button--circle': circle
    'at-button--full': full

  # loadingColor = 
  #   if type is 'primary'
  #   then '#fff'
  #   else ''

  # loadingSize =
  #   if size is 'small'
  #   then 30
  #   else 0

  # if loading?
  #   loadingComponent = 
  #     C.View
  #       className: 'at-button__icon'
  #     ,
  #       C.AtLoading
  #         color: loadingColor
  #         size: loadingSize

  #   rootClassName.push 'at-button--icon'

  button = 

    C.Button {
      className: 'at-button__wxbutton'

      formType
      openType
      lang
      sessionFrom
      sendMessageTitle
      sendMessagePath
      sendMessageImg
      showMessageCard
      appParameter

      # onGetUserInfo: onGetUserInfo
      # onGetPhoneNumber: onGetPhoneNumber
      # onOpenSetting: onOpenSetting
      # onError: onError
      # onContact: onContact
    }
  
  C.View
    className: clsx [
      rootClassName
      classObject
      className
    ]
    style: customStyle
    onClick: => onClick unless disabled
  ,
    !disabled and (
      C.Form {
        reportSubmit: true
        # onSubmit
        # onReset
      }
      , button
    )
    # loadingComponent
    C.View
      className: 'at-button__text'
    , children

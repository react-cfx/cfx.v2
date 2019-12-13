import React, {
  useState
  useEffect
} from 'react'

import {
  View
  Text
  Image
  navigateTo 
} from 'remax/wechat'

import AtAccordion from '../../components/accordion'

import CFX from '../../utils/cfx'

C = CFX {
  View
  AtAccordion
}

export default (props) =>
  [ open, setOpen ] = useState false

  C.AtAccordion
    open: open
    onClick: () => setOpen(true)
    title: '标题一'
  ,
    C.View {}
    , 'hello world'
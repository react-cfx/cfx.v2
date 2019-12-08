import CFX from '../../utils/cfx'

import View from 'rax-view'
import Text from 'rax-text'
import Logo from '../../components/Logo'

import styl from 'cfx.styl'
import style from './index.cfs'
import styles from './index.cfs.css'

import CFS from '../../utils/cfs'

S = CFS {
  styl
  style
  styles
}

C = CFX {
  View
  Text
  Logo
}

export default =>

  C.View 
    style: S.home
  ,
    C.Logo {}
    C.Text
      style: S.title
    , 'Welcome to Your Rax App'
    C.Text
      style: S.info
    , 'More information about Rax'
    C.Text
      style: S.info
    , 'Visit https://rax.js.org'

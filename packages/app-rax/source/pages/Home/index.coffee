import CFX from '../../utils/cfx'

import View from 'rax-view'
import Text from 'rax-text'
import Logo from '../../components/Logo'

import styl from 'cfx.styl'
import style from './index.cfs'
import styles from './index.cfs.css'

classes = (
  styl style
).classes()

import { className } from '../../utils/cfs'

C = CFX {
  View
  Text
  Logo
}

export default =>

  C.View 
    style: styles[className classes.home]
  ,
    C.Logo {}
    C.Text
      style: styles[className classes.title]
    , 'Welcome to Your Rax App'
    C.Text
      style: styles[className classes.info]
    , 'More information about Rax'
    C.Text
      style: styles[className classes.info]
    , 'Visit https://rax.js.org'

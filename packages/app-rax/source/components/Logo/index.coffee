import CFX from '../../utils/cfx'

import Image from 'rax-image'

import styl from 'cfx.styl'
import style from './index.cfs'
import styles from './index.cfs.css'
classes = (
  styl style
).classes()

import { className } from '../../utils/cfs'

C = CFX {
  Image
}

export default (props) =>

  C.Image
    style: styles[className classes.logo]
    source:
      uri: '//gw.alicdn.com/tfs/TB1MRC_cvb2gK0jSZK9XXaEgFXa-1701-1535.png'

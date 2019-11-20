import dd from 'ddeyes'
import 'shelljs/make'

import style from '../source/cfstyl/index.cfs'
import { cfs } from '../../lib/plugins/cfs'

target.all = =>

  dd(
    (
      cfs style
    )
    .classes()
  )

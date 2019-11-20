# import dd from 'ddeyes'
import CoffeeScript from 'coffeescript'
import { cfs } from '../lib/plugins/cfs'
# import css from 'css'

export default

  exts:

    coffee:
      libs: {
        CoffeeScript
      }

    cfsCoffee:
      libs: {
        cfs
      }

  excludes: [
    '/hello.coffee'
    '/hello'
  ]

  others:
    action: 'copy'

# import dd from 'ddeyes'
import CoffeeScript from 'coffeescript'
import cfs from '../../styl/dist'
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

  excludes: /hello/

  others:
    action: 'copy'

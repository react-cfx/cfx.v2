import CoffeeScript from 'coffeescript'
import cfs from 'cfx.styl'

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

  excludes: '/style'

  others:
    action: 'copy'

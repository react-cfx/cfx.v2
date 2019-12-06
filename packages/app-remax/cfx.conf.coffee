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

  others:
    action: 'copy'

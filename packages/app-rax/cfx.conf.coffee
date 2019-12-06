import CoffeeScript from 'coffeescript'
import cfs from 'cfx.styl'

import {
  gdf
  writeTo
} from 'cfx.builder/dist/helper'

export default

  exts:

    coffee:
      excludeSubs: [
        'json'
      ]
      libs: {
        CoffeeScript
      }

    cfsCoffee:
      libs: {
        cfs
      }

    jsonCoffee:
      action: (fileFrom, fileTo, libs) =>
        unless libs?.json?
          throw new Error 'json was not found.'

        { json } = libs

        jsonObj = gdf require fileFrom

        jsonCode = json jsonObj

        writeTo fileTo, jsonCode

      ext: '.json.coffee'
      exto: ''
      libs:
        json: (jsonObj) =>
          JSON.stringify(
            jsonObj
            null
            2
          )

  others:
    action: 'copy'

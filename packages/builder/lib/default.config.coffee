import coffee from './plugins/coffee'
import cfs from './plugins/cfs'

export default

  path:
    source: 'source'
    dist: 'src'
  
  plugins: []

  exts:

    coffee:
      action: coffee
      exto: '.js'

    cfsCoffee:
      action: cfs
      ext: '.cfs.coffee'
      exto: '.css'

    # js:
    # pug:
    # styl:
    # css:
    # vue:
    # md:
    # image:
    #   exts: [
    #     '.jpg'
    #     '.png'
    #   ]
    #   action: 'move'

  others:
    action: 'none'

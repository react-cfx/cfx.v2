import {
  createRenderer
  renderToString
} from './cfstyl'

import * as classUtil from './classKey'
import * as plugins from './plugins'
import * as cfs from './cfs'

export {
  createRenderer
  renderToString
  plugins
  classUtil
}

export default (_styles) =>

  styles =
    switch typeof _styles
      when 'object'
      then _styles
      when 'function'
      then _styles {
        cfs
      }
      else _styles

  cfsPlugins = [
    plugins.at._fonts()
    plugins.at._global()
    plugins.hashClassKey()

    plugins.selectorName()
    plugins.classNames()
    plugins.ruleK()
  ]

  render = createRenderer
    plugins: cfsPlugins

  renderer = render.render styles

  cssCode: => renderToString renderer
  classes: => render.getClasses()

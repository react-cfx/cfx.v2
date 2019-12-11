import {
  createRenderer
  renderToString
} from './cfstyl'

import * as classUtil from './classKey'

import * as plugins from './plugins'

export {
  createRenderer
  renderToString
  plugins
  classUtil
}

export default (styles) =>

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

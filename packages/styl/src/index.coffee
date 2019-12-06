import {
  createRenderer
  renderToString
} from './cfstyl'

import * as plugins from './plugins'

export {
  createRenderer
  renderToString
  plugins
}

export default (styles) =>

  cfsPlugins = [
    plugins.selectorName()
    plugins.classNames()
    plugins.ruleK()
    plugins.hashClassKey()
  ]

  render = createRenderer
    plugins: cfsPlugins

  renderer = render.render styles

  cssCode: => renderToString renderer
  classes: => render.getClasses()

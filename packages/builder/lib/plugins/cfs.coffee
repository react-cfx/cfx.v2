import dd from 'ddeyes'

import {
  createRenderer
  renderToString
  plugins as cfsPlugins
} from 'cfx.styl'

cfs = (styles) =>

  plugins = [
    cfsPlugins.selectorName()
    cfsPlugins.classNames()
    cfsPlugins.ruleK()
    cfsPlugins.haskClassKey()
  ]

  render = createRenderer {
    plugins
  }

  renderer = render.render styles

  cssCode: => renderToString renderer
  classes: => render.getClasses()

export {
  cfs
}

import { gdf } from '../util'
import { writeTo } from './util'

export default (fileFrom, fileTo, libs) =>

  unless libs?.cfs?
    throw new Error 'cfs was not found.'

  { cfs } = libs

  stylSource = gdf require fileFrom

  cssCode = (
    cfs stylSource
  ).cssCode()

  writeTo fileTo, cssCode

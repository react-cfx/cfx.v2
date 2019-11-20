import dd from 'ddeyes'

import {
  createRenderer
  renderToString
} from 'cfx.styl/source'

import selectorNamePlugin from 'cfx.styl/source/plugins/selectorName'
import classNamesPlugin from 'cfx.styl/source/plugins/classNames'
import ruleKPlugin from 'cfx.styl/source/plugins/ruleK'
import haskClassKey from 'cfx.styl/source/plugins/hashClassKey'

cfs = (styles) =>

  plugins = [
    selectorNamePlugin()
    classNamesPlugin()
    ruleKPlugin()
    haskClassKey()
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

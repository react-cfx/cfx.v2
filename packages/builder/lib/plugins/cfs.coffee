# import dd from 'ddeyes'

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

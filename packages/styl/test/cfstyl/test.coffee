import dd from 'ddeyes'
import 'shelljs/make'

target.all = =>
  dd 'Hello World!!!'

import {
  createRenderer
  renderToString
} from '../../source'
import {
  camlToSlash
  ccs
} from '../../source/classKey'

import selectorNamePlugin from '../../source/plugins/selectorName'
import classNamesPlugin from '../../source/plugins/classNames'
import ruleKPlugin from '../../source/plugins/ruleK'
import hashClassKey from '../../source/plugins/hashClassKey'

target.render = =>

  subSelectorName = (selectorName, parentName) =>
    if selectorName.includes '&'
    then selectorName.replace '&', parentName
    else "#{parentName} #{selectorName}"

  plugins = [
    hashClassKey()
    selectorNamePlugin()
    classNamesPlugin()
    ruleKPlugin()
  ]

  renderer = createRenderer {
    plugins
  }

  cs = ccs {
    'pageIndex'
  }

  style = 
    page:

      position: 'relative'
      backgroundColor: '#f7f7f7'

      pageIndex:
        position: 'relative'
        backgroundColor: '#f8f8f8'

        "pageIndex.classTemp":
          position: 'relative'
          backgroundColor: '#f9f9f9'

  render = renderer.render style
  classes = renderer.getClasses()

  css = renderToString render

  # dd {
  #   style
  #   render
  #   classes
  # }

  console.log css

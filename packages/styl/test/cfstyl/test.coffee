import dd from 'ddeyes'
import 'shelljs/make'

target.all = =>
  dd 'Hello World!!!'

import {
  createRenderer
  renderToString
} from '../../src'
import {
  camlToSlash
  ccs
} from '../../src/classKey'

import * as _plugins from '../../src/plugins'

import icons from './style/icons'
import { iconfont } from './style/fonts'

target.render = =>

  # subSelectorName = (selectorName, parentName) =>
  #   if selectorName.includes '&'
  #   then selectorName.replace '&', parentName
  #   else "#{parentName} #{selectorName}"

  plugins = [
    _plugins.at._fonts()
    _plugins.at._global()
    _plugins.hashClassKey()

    _plugins.selectorName()
    _plugins.classNames()
    _plugins.ruleK()
  ]

  renderer = createRenderer {
    plugins
  }

  cs = ccs {
    'pageIndex'
  }

  style = 

    '@fonts': {
      iconfont
    }

    '@tags':
      page:
        position: 'relative'
        backgroundColor: '#f0f0f0'

    '@global': {
      icons...
    }

    page:

      position: 'relative'
      backgroundColor: '#f7f7f7'

      '.pageIndex':
        position: 'relative'
        backgroundColor: '#f8f8f8'

        ':classTemp':
          position: 'relative'
          marginBottom: 0
          backgroundColor: '#f9f9f9'

    pageSecond:
      position: 'relative'
      backgroundColor: '#f0f0f0'

      '&__item':
        position: 'relative'
        backgroundColor: '#f0f0f0'

        ':classSecond':
          position: 'relative'
          backgroundColor: '#f4f4f4'

        '&__item':
          position: 'relative'
          backgroundColor: '#f8f8f8'

    pageThird3:
      position: 'relative'
      backgroundColor: '#f0f0f0'

      'page-forth--ab':
        position: 'relative'
        backgroundColor: '#f0f0f0'

      'page-forth__cd':
        position: 'relative'
        backgroundColor: '#f0f0f0'

      '&--ef':
        position: 'relative'
        backgroundColor: '#f0f0f0'

        '&::after':
          display: 'none'

      '&__gh':
        position: 'relative'
        backgroundColor: '#f0f0f0'

        '&::after':
          display: 'none'

      '&__ij.&__kl':
        display: 'none'

      '&--ij.&--kl':
        display: 'none'

      '&--ij':
        display: 'none'

        '&__kl':
          display: 'none'

      '&--ij &__kl':
        display: 'none'

      '&__ij.&--kl':
        display: 'none'

  render = renderer.render style
  classes = renderer.getClasses()

  css = renderToString render

  # dd {
  #   style
  #   render
  #   classes
  # }

  console.log css

import fontsPlugin from '../../src/plugins/at/fonts'

target.fonts = =>

  style =
    iconfont: [
      'data:application/x-font-woff;charset=utf-8;base64,d09GRgABAAAAA'
    ]

  dd(
    fontsPlugin() style, '@fonts'
  )

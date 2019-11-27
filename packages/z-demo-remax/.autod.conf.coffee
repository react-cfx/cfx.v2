export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '~'
  devprefix: '^'
  plugin: ''
  test: []
  dep: [
    'ddeyes'
    'cfx.require-plugin-coffee'

    'clsx'
    'color'
    'color-blend'
    'css'
    'react'
    'remax'
    'rimraf'
  ]
  devdep: [
    'autod'
    'cfx.require-plugin-coffee'
    'coffeescript'
    'shelljs'
    'replace'

    'remax-cli'
  ]
  keep: [
    'cfx.dom'
    'cfx.styl'
    'cfx.builder'
  ]
  exclude: [
    './node_modules'
    './.autod.conf.js'
  ]

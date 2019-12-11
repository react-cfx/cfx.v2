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

    'rax'
    'rax-app'
    'rax-image'
    'rax-link'
    'rax-text'
    'rax-view'

    'rimraf'
  ]
  devdep: [
    'autod'
    'coffeescript'
    'shelljs'

    '@alib/build-scripts'
    'build-plugin-rax-app'
    'rax-plugin-app'
    'rax-scripts'
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

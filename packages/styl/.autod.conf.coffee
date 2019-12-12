export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '~'
  devprefix: '^'
  plugin: ''
  test: []
  dep: [
    'ddeyes'
    'hash-sum'
  ]
  devdep: [
    'autod'
    'rimraf'

    'cfx.require-plugin-coffee'
    'coffeescript'
    'shelljs'

    'gulp'
    'cfx.rollup-plugin-coffee2'
  ]
  exclude: [
    './node_modules'
    './.autod.conf.js'
  ]

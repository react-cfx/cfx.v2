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
  ]
  devdep: [
    'autod'
    'rimraf'

    'gulp'
    'cfx.rollup-plugin-coffee2'
  ]
  exclude: [
    './node_modules'
    './.autod.conf.js'
  ]

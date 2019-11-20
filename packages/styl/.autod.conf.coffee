export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '~'
  devprefix: '^'
  plugin: ''
  test: []
  dep: [
    'ddeyes'
  ]
  devdep: [
    'autod'
    'cfx.builder'
    'cfx.require-plugin-coffee'
    'coffeescript'
    'shelljs'
  ]
  exclude: [
    './packages'
    './node_modules'
    './.autod.conf.js'
  ]

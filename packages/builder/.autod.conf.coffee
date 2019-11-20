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
    'deepmerge'
    'fs-extra'
    'is-plain-object'
    'klaw-sync'
  ]
  devdep: [
    'autod'
    'coffeescript'
    'shelljs'
  ]
  exclude: [
    './packages'
    './node_modules'
    './.autod.conf.js'
  ]

export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '~'
  devprefix: '^'
  plugin: ''
  test: []
  dep: [
    'cfx.require-plugin-coffee'
    'ddeyes'

    'deepmerge'
    'fs-extra'
    'is-plain-object'
    'klaw-sync'

    'gulp'
    'cfx.rollup-plugin-coffee2'
  ]
  devdep: [
    'autod'
    'coffeescript'
    'shelljs'
  ]
  keep: [
  ]
  exclude: [
    './node_modules'
    './.autod.conf.js'
  ]

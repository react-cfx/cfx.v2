import dd from 'ddeyes'
import { cwd } from 'process'
import {
  join
  dirname
  extname
} from 'path'

import fse from 'fs-extra'
import merge from 'deepmerge'
import isPlainObject from 'is-plain-object'

_merge = (x, y) =>
  merge x, y
  ,
    isMergeableObject: isPlainObject 

import klawSync from 'klaw-sync'
import { gdf } from './util'

fillUserPlugins = (userConf) => 
  return userConf unless userConf?.exts?
  return userConf unless (typeof userConf.exts) is 'object'
  return userConf if userConf.plugins?
  {
    userConf...
    plugins: Object.keys userConf.exts 
  }

getConf = =>
  userConfPath = join cwd(), './cfx.conf.coffee'

  conf = {
    deft: gdf require './default.config.coffee'
    user: fillUserPlugins(
      if fse.pathExistsSync userConfPath
      then gdf require userConfPath
      else {}
    )
  }

  r = _merge conf.deft, conf.user

  unless fse.pathExistsSync r.path.source
  then throw new Error 'Source dir was not found.'
  else r

fillPath = (conf) =>

  return conf unless conf?.path?
  return conf unless conf.path.source?
  return conf unless conf.path.dist?

  _cwd = cwd()
  _path =
    source: join _cwd, conf.path.source
    dist: join _cwd, conf.path.dist

  _merge conf
  ,
    path: _path

fillExt = (conf) =>

  { exts } = conf
  _exts = (
    Object.keys exts
  ).reduce (r, c) =>
    {
      r...
      [c]: {
        exts[c]...
        (
          unless exts[c].ext?
          then ext: ".#{c}"
          else {}
        )...
      }
    }
  , {}

  {
    conf...
    exts: _exts
  }

filteExtsFromPlugins = (conf) =>

  {
    plugins
    exts
  } = conf

  return conf unless Array.isArray plugins
  return {
    conf...
    exts: {}
  } if plugins.length is 0

  _exts = plugins.reduce (r, c) =>
    {
      r...
      [c]: exts[c]
    }
  , {}
  {
    conf...
    exts: _exts
  }

pathFileList = (_path) =>
  paths = klawSync(
    _path
    nodir: true
  )
  .reduce (r, c) =>
    [
      r...
      c.path
    ]
  , []

excludesList = (conf) =>
  return [] unless conf?.excludes?

  unless Array.isArray conf.excludes
  then [ conf.excludes ]
  else conf.excludes

isExcluded = ({file, dir}, excludes) =>
  (
    unless Array.isArray excludes
    then [ excludes ]
    else excludes
  )
  .reduce (r, c) =>
    return r if r is true
    if (typeof c) is 'string'
      return true if dir is c
      return true if file is c
      return true if file.includes c
      false
    else if c.constructor is RegExp
      c.test file
    else false
  , false

sourceList = (conf) =>
  sourcePath = conf.path.source
  _excludes = excludesList conf
  (
    pathFileList sourcePath
  )
  .reduce (r, c) =>
    file = c.replace conf.path.source, ''
    dir = dirname file
    ext = extname file
    return r if (
      _excludes.length isnt 0
    ) and (
      isExcluded {
        file
        dir
      }, _excludes
    )
    [
      r...
      {
        file
        dir
        ext
        name: (
          (
            file.replace dir, ''
          ).replace ext, ''
        ).replace '/', ''
      }
    ]
  , []

fileListByExt = (fileList) =>
  fileList
  .reduce (r, c) =>
    { ext } = c
    {
      r...
      [ext]: [
        (
          if r[ext]?
          then r[ext]
          else []
        )...
        c
      ]
    }
  , {}

getSubExtFiles = (ext, fileList) =>
  prtext = extname ext
  subExt = ext
  .replace prtext, ''
  fileList[prtext]
  .reduce (r, c) =>
    [
      r...
      (
        if c.file.includes subExt
        then [c]
        else []
      )...
    ]
  , []

excludeSubs = (excludeSubNames, fileList) =>
  fileList
  .reduce (r, c) =>
    arr = c.file.split '.'
    if arr.length isnt 3
    then [
      r...
      c
    ]
    else [
      r...
      (
        excludeSubNames
        .reduce (_r, _c) =>
          [
            _r...
            (
              if _c is arr[1]
              then []
              else [ c ]
            )...
          ]
        , []
      )...
    ]
  , []

excludesExt = (files, excludes) =>
  files.reduce (r, c) =>
    {
      file
      dir
    } = c
    [
      r...
      (
        if isExcluded {
          file
          dir
        }, excludes
        then []
        else [ c ]
      )...
    ]
  , []

mergeFilesToConf = (conf, fileList) =>

  others = (
    Object.keys fileList
  )
  .reduce (_r, _c) =>
    {
      _r...
      [_c]: _c
    }
  , {}

  { exts } = conf

  _exts = (
    Object.keys exts
  )
  .reduce (r, c) =>

    files =
      if fileList[exts[c].ext]?
      then(

        delete others[exts[c].ext]

        if exts[c].excludeSubs?
        then(
          excludeSubs exts[c].excludeSubs
          , fileList[exts[c].ext]
        )
        else fileList[exts[c].ext]
      )
      else(
        getSubExtFiles exts[c].ext, fileList
      )

    files =
      if exts[c].excludes?
      then excludesExt files, exts[c].excludes
      else files

    {
      r...
      [c]: {
        exts[c]...
        files: files
      }
    }
  , {}

  _others = (
    Object.keys others
  )
  .reduce (_r_, _c_) =>
    [
      _r_...
      fileList[_c_]...
    ]
  , []

  {
    conf...
    exts: _exts
    others: {
      conf.others... 
      files: _others
    }
  }

export {
  getConf
  fillPath
  fillExt
  filteExtsFromPlugins
  sourceList
  fileListByExt
  mergeFilesToConf
}

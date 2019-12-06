import conf from './conf'
import fs from 'fs'
import { join } from 'path'
import 'shelljs/make'

target.all = =>
  console.log 'Generate rax build.json file.'

writeRaxBuildJson = (obj) =>
  fs.writeFileSync(
    join __dirname, '../build.json'
    JSON.stringify obj, null, 2
    'utf-8'
  )

target.web = =>
  writeRaxBuildJson conf.web

target.weex = =>
  writeRaxBuildJson conf.weex

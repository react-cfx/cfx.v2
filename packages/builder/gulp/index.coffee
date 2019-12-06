import gulp, { series }  from 'gulp'
import { tasks } from 'cfx.rollup-plugin-coffee2'
import path from 'path'
join = (dir) =>
  path.join __dirname, dir 

gulp.task 'clean'
, tasks.clean join '../dist'

gulp.task 'buildEs'
,
  tasks.buildEs gulp
  ,
    index: join '../lib/helper.coffee'
    dest: join '../dist/es'
    fileName: 'helper.js'

gulp.task 'buildCjs'
,
  tasks.buildCjs gulp
  ,
    index: join '../dist/es/helper.js'
    dest: join '../dist'
    fileName: 'helper.js'

gulp.task 'build'
,
  tasks.build series

gulp.task 'rebuild'
,
  tasks.rebuild series

gulp.task 'default'
,
  series(
    'rebuild'
  )
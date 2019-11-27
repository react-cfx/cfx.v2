# import dd from 'ddeyes'
import path from 'path'
import gulp, { series } from 'gulp'
import { task } from 'cfx.rollup-plugin-coffee2'

join = (dir) =>
  path.join __dirname, dir 

task {
  gulp
  series
  join
}

gulp.task 'default'
  , series 'rebuild'

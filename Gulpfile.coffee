gulp 		= require 'gulp'
requireDir	= require 'require-dir'
runSequence = require 'run-sequence'

requireDir './gulp'

watchAndRebuild = () ->
	gulp.watch ['./compile/**/*'], ['build']

watchAndRecompile = () ->
	gulp.watch ['./src/**/*'], ['browserify']
	gulp.watch ['./index.html', './index.coffee'], ['through']

gulp.task 'watch-all', () ->
	watchAndRecompile()
	watchAndRebuild()

gulp.task 'watch-compile-build', runSequence('compile', 'build', 'watch-all')
gulp.task 'watch-compile', ['build'], watchAndRecompile
gulp.task 'watch-build', ['build'], watchAndRebuild
gulp.task 'default', ['watch-compile-build']

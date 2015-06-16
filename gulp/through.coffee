gulp 		= require 'gulp'
coffee 		= require 'gulp-coffee'

gulp.task 'through', ->

	gulp.src './index.html'
		.pipe gulp.dest('./compile')

	gulp.src './index.coffee'
		.pipe coffee()
		.pipe gulp.dest('./compile')

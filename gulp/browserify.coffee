gulp 		= require 'gulp'
browserify 	= require 'browserify'
reactify 	= require 'coffee-reactify'
source 		= require 'vinyl-source-stream'

gulp.task 'browserify', () ->
	bundler = browserify({
		entries		: ['./src/app.cjsx']
		transform 	: [reactify]
	})
	return bundler.bundle()
		.pipe(source('app.js'))
		.pipe(gulp.dest('./compile'))

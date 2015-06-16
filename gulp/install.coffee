gulp 	= require 'gulp'
install	= require 'gulp-install'

gulp.task 'install', () ->
	return gulp.src('./package.json')
		.pipe(gulp.dest('./compile'))
		.pipe(install({production: true}))

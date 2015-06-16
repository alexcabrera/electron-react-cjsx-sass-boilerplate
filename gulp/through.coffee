gulp 		= 'gulp'
browserify 	= 'gulp-browserify'
rename 		= 'gulp-rename'

gulp.task 'through', ->
	gulp.src './App.cjsx', { read: false }
		.pipe browserify
			transform	: ['coffee-reactify']
			extendsion	: ['.cjsx']
		.pipe rename 'index.html'
		.pipe gulp.dest './compile'

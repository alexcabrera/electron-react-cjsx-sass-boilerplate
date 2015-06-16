gulp = require 'gulp'
atom = require 'gulp-atom'

gulp.task 'atom', () ->
	return atom
		srcPath		: './compile'
		releasePath	: './build'
		cachePath 	: './cache'
		version 	: 'v0.28.1'
		rebuild 	: false,
		platforms 	: ['darwin-x64']

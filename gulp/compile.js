var gulp = require( 'gulp' );

gulp.task( 'compile', [
	'coffee',
	'cjsx',
	'browserify',
	'through',
	'sass',
	'install'
] );

var gulp = require( 'gulp' );

gulp.task( 'compile', [
	'browserify',
	'through',
	'sass',
	'install'
] );

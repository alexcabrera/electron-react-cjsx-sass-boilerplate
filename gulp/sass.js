var gulp = require( 'gulp' );
var less = require( 'gulp-sass' );

gulp.task( 'sass', function () {
	return gulp.src( './app/**/*.sass' )
		.pipe( less() )
		.pipe( gulp.dest( './compile' ) );
} );
var gulp = require( 'gulp' );
var browserify = require( 'browserify' );
var reactify = require( 'coffee-reactify' );
var source = require( 'vinyl-source-stream' );

gulp.task( 'browserify', function () {
	var bundler = browserify( {
		entries: [ './component/app.cjsx' ],
		transform: [ reactify ]
	} );
	return bundler.bundle()
		.pipe( source( 'app.js' ) )
		.pipe( gulp.dest( './compile' ) );
} );

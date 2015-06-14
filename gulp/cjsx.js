var gulp = require('gulp');
var gutil = require('gulp-util');
var cjsx = require('gulp-cjsx');

gulp.task('cjsx', function() {
  gulp.src('./**/*.cjsx')
    .pipe(cjsx({bare: true}).on('error', gutil.log))
    .pipe(gulp.dest('./compile'));
});

// 'use strict';

var gulp = require('gulp'),
    sassLint = require('gulp-sass-lint'),
    sass = require('gulp-sass'),
    sassSrcPath = 'styles/source',
    sassOutPath = 'styles/public',
    chug = require('gulp-chug');

gulp.task('sass', function () {
  gulp.src(sassSrcPath + '/**/*.s+(a|c)ss')
    .pipe(sassLint())
    .pipe(sassLint.format())
    .pipe(sassLint.failOnError())
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest(sassOutPath));
});

gulp.task('lab', function(){
  gulp.src( 'patternlab/gulpfile.js' )
    .pipe( chug() );
});

gulp.task('default', ['lab', 'sass']);

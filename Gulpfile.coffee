gulp = require('gulp')
gutil = require('gulp-util')
coffee = require('gulp-coffee')
watch = require('gulp-watch')

gulp.task 'coffee', ->
    gulp.src('coffee/*.coffee')
    .pipe(watch('coffee/*.coffee'))
    .pipe(coffee().on('error', gutil.log))
    .pipe(gulp.dest('./public/javascripts/'))

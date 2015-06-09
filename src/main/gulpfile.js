var gulp = require('gulp');
var gutil = require('gulp-util');
var bower = require('bower');
var concat = require('gulp-concat');
var concatCss = require('gulp-concat-css');
var sass = require('gulp-sass');
var minifyCss = require('gulp-minify-css');
var karma = require('gulp-karma');

var rename = require('gulp-rename');
var sh = require('shelljs');
var livereload = require('gulp-livereload');

var handleErrors = require('handle-errors');
var streamqueue = require('streamqueue');

var stripDebug = require('gulp-strip-debug');
var uglify = require('gulp-uglify');

function add_path(arr, base) {
    for (var i = 0; i < arr.length; ++i) {
        arr[i] = base + arr[i];
    }
}

var paths = {

    // THINGS FROM BOWER
    bower: {
        js: [
            'jquery/dist/jquery.js',
            'progressbar.js/dist/progressbar.js',
            'blurjs/dist/jquery.blur.js',
            'sweetalert/lib/sweet-alert.min.js',
            'bootstrap/dist/js/bootstrap.min.js',
            'angular/angular.js',
            'angular-resource/angular-resource.js',
            'angular-animate/angular-animate.js',
            'angular-touch/angular-touch.js',
            'angular-translate/angular-translate.min.js',
            'angular-sweetalert/SweetAlert.min.js',
            'angular-ui-clock/dist/angular-clock.js',
            'angular-bootstrap-multiselect/angular-bootstrap-multiselect.js',
            'angular-bootstrap/ui-bootstrap-tpls.js',
            'angular-ui-router/release/angular-ui-router.js',
            'angular-ui-utils/keypress.min.js',
            'angular-loading-bar/build/loading-bar.min.js',
            'hello/dist/hello.all.js',
            'ng-hello/dist/ng-hello.js',
            'ngDialog/js/ngDialog.js',
            'Chart.js/Chart.min.js',
            'angular-chart.js/dist/angular-chart.js',
            'ng-sortable/dist/ng-sortable.min.js'
        ],
        css: [
            'sweetalert/lib/sweet-alert.css',
            'bootstrap/dist/css/bootstrap.min.css',
            'bootstrap-social/bootstrap-social.css',
            'ngDialog/css/ngDialog.min.css',
            'ngDialog/css/ngDialog-theme-default.min.css',
            'angular-chart.js/dist/angular-chart.css',
            'angular-loading-bar/build/loading-bar.css',
            'ng-sortable/dist/ng-sortable.min.css',            
            'components-font-awesome/css/font-awesome.min.css'
        ],
        images: [

        ],
        fonts: [
            'bootstrap/dist/fonts/*.*',
            'components-font-awesome/fonts/*.*'
        ],
        sass: [
            'animate.css-scss/animate.scss',
            // 'bootstrap-social/bootstrap-social.scss',
        ],
        maps_js: [
            'jquery/dist/jquery.min.map'
        ],
        maps_css: [
            'angular-chart.js/dist/angular-chart.css.map',
            'bootstrap/dist/css/bootstrap.css.map'
        ]
    },


    // MY STUFF
    images: [
        './app_dev/img/**/*.png',
        './app_dev/img/**/*.jpg',
        './app_dev/img/**/*.gif',
        './app_dev/img/**/*.svg'
    ],
    fonts: [
        './app_dev/fonts/**/*.ttf',
        './app_dev/fonts/**/*.woff',
        './app_dev/fonts/**/*.woff2'
    ],
    sass: [
        //'./bower_components/sass-css3-mixins/css3-mixins.scss',
        './app_dev/app.main.scss',
        './app_dev/**/!(app.main.scss)*.scss'
    ],
    js: [
        './app_dev/app.module.js',
        './app_dev/**/!(*.tests)*.js'
    ],
    html: [
        './app_dev/**/*.html',
    ],
    jboss: [
        './app_dev/jboss/**/*.*'
    ]
};

for (var key in paths.bower) {
    if (paths.bower.hasOwnProperty(key)) {
        add_path(paths.bower[key], './bower_components/');
    }
}
var path_js = paths.bower.js.concat(paths.js);
var path_sass = paths.bower.sass.concat(paths.sass);
var path_images = paths.bower.images.concat(paths.images);
var path_fonts = paths.bower.fonts.concat(paths.fonts);



gulp.task('scripts', function() {
    return streamqueue({
                objectMode: true
            },
            gulp.src(path_js)
        )
        .pipe(concat('index.js'))
        // .pipe(stripDebug())
        // .pipe(uglify())

    .pipe(gulp.dest('./webapp/assets/js'))
        .pipe(livereload())
        .on('error', handleErrors);
});


gulp.task('test', function() {
  // Be sure to return the stream 
  return gulp.src(path_js)
    .pipe(karma({
      configFile: 'karma.unit-test.conf.js',
      action: 'run'
    }))
    .on('error', function(err) {
      // Make sure failed tests cause gulp to exit non-zero 
      throw err;
    });
});

gulp.task('sass', function(done) {
    gulp.src(path_sass)
        .pipe(concat('index.css'))
        .pipe(sass())
    // .pipe(gulp.dest('./webapp/css/'))
    // .pipe(minifyCss({
    //   keepSpecialComments: 0
    // }))
    // .pipe(rename({ extname: '.min.css' }))
    .pipe(gulp.dest('./webapp/assets/css'))
        .pipe(livereload())
        .on('end', done);
});


gulp.task('images', function() {
    //console.log(paths.libs);  
    gulp.src(path_images)
        .pipe(gulp.dest('./webapp/assets/img/'))
        .pipe(livereload())

});

gulp.task('fonts', function() {
    //console.log(paths.libs);  
    gulp.src(path_fonts)
        .pipe(gulp.dest('./webapp/assets/fonts'))
        .pipe(livereload())

});


gulp.task('html', function() {
    // console.log(paths.html);
    gulp.src(paths.html)
        .pipe(gulp.dest('./webapp/app/'))

    gulp.src('./app_dev/index.html')
        .pipe(gulp.dest('./webapp/'))
        .pipe(livereload());
});

gulp.task('css', function() {
    gulp.src( paths.bower.css )
        .pipe(concat("libs.css"))
        .pipe(gulp.dest('./webapp/assets/css'));
});

gulp.task('maps_js', function() {
    //console.log(paths.libs);  
    gulp.src(paths.bower.maps_js)
        .pipe(gulp.dest('./webapp/assets/js'))
        .pipe(livereload())

});

gulp.task('maps_css', function() {
    //console.log(paths.libs);  
    gulp.src(paths.bower.maps_css)
        .pipe(gulp.dest('./webapp/assets/css'))
        .pipe(livereload())

});

gulp.task('jboss', function() {
    //console.log(paths.libs);  
    gulp.src(paths.jboss)
        .pipe(gulp.dest('./webapp/'))
        .pipe(livereload())

});


gulp.task('watch', function() {
    livereload.listen();

    gulp.watch(path_js, ['scripts']);
    gulp.watch(path_sass, ['sass']);
    gulp.watch(path_images, ['images']);
    gulp.watch(path_fonts, ['fonts']);

    gulp.watch(paths.html, ['html']);
    gulp.watch(paths.css, ['css'])
    gulp.watch(paths.bower.maps_js, ['maps_js']);
    gulp.watch(paths.bower.maps_css, ['maps_css']);
    gulp.watch(paths.jboss, ['jboss']);

});

// gulp.task('install', ['git-check'], function() {
//   return bower.commands.install()
//     .on('log', function(data) {
//       gutil.log('bower', gutil.colors.cyan(data.id), data.message);
//     });
// });

// gulp.task('git-check', function(done) {
//   if (!sh.which('git')) {
//     console.log(
//       '  ' + gutil.colors.red('Git is not installed.'),
//       '\n  Git, the version control system, is required to download Ionic.',
//       '\n  Download git here:', gutil.colors.cyan('http://git-scm.com/downloads') + '.',
//       '\n  Once git is installed, run \'' + gutil.colors.cyan('gulp install') + '\' again.'
//     );
//     process.exit(1);
//   }
//   done();
// });


gulp.task('default', [
    'watch',
    'scripts',
    'sass',
    'images',
    'fonts',
    'html',
    'css',
    'maps_js',
    'maps_css',
    'jboss'
]);
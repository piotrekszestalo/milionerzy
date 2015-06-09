module.exports = function(config){
    config.set({
    basePath : './',

    files : [
      'webapp/assets/js/index.js',
      'bower_components/**/angular-mocks.js',
      'app_dev/**/*.tests.js'
      //'test/unit/*.js'
    ],

    exclude : [
      // 'app/lib/angular/angular-loader.js',
      // '**/*.min.js'
      // 'app/lib/angular/angular-scenario.js'
    ],

    autoWatch : true,

    frameworks: ['jasmine'],

    browsers : ['Chrome'],

    plugins : [
        'karma-phantomjs-launcher',
            'karma-junit-reporter',
            'karma-chrome-launcher',
            'karma-firefox-launcher',
            'karma-jasmine'
            ],

    junitReporter : {
      outputFile: 'test_out/unit.xml',
      suite: 'unit'
    },

    singleRun: true

})}

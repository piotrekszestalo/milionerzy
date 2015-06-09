angular.module('millionaries')
.config(function($stateProvider, $urlRouterProvider) {
  
  $stateProvider

  .state('start', {
    url: '/',
    views: {
      "master": {
        controller: 'InfoCtrl',
        templateUrl: 'app/components/info/info_view.html'
      }
    }
  })



  .state('game', {
    url: '/game',
    views: {
      "master": {
        controller: 'GameCtrl',
        templateUrl: 'app/components/game/game_view.html'
      }
    }
  })



  .state('ranking', {
    url: '/ranking',
    views: {
      "master": {
        controller: 'RankingCtrl',
        templateUrl: 'app/components/ranking/ranking_view.html'
      }
    }
  })


 

  $urlRouterProvider.otherwise('/');


});

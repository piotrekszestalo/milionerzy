angular.module('millionaries')

.controller('AppCtrl', ['$scope','Game', function($scope,Game){
	Game.recreate();
	$scope.Game = Game;
}])
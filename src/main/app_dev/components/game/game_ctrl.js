angular.module('millionaries')

.controller('GameCtrl', ['$scope','Game', function($scope,Game){

	$scope.Game = Game;
	$scope.user = {
		name:null
	}

	$scope.login = function() {
		Game.create($scope.user);
	}

	
}])

angular.module('millionaries')

.controller('RankingCtrl', ['$scope', 'UsersREST', 'Game',
    function($scope,UsersREST,Game) {

    	$scope.Game = Game;
    	$scope.users = [];

    	UsersREST.query(function(res) {
    		$scope.users = res;
    	})



		$scope.toSecond = function(time) {
			if(time == null) return "-";
			return  parseInt(parseInt(time)/1000)+" sekund";
		}

		
    }
])

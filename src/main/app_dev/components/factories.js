angular.module('millionaries')

.factory('UsersREST', ['$resource',
    function($resource) {
        return $resource('rest/users/:bonuses', { bonuses: '@bonuses' } ,{   
    		update: {  method: 'PUT'   }
    	});
    }
])


.factory('QuestionsREST', ['$resource',
    function($resource) {
        return $resource('rest/questions/:bonus',{ bonus: '@bonus' });
    }
])


.factory('AnswersREST', ['$resource',
    function($resource) {
        return $resource('rest/answers/:id', { id: '@id' });
    }
])







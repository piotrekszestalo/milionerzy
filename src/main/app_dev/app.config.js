
angular.module('millionaries')

.config([ 'helloProvider',
  function( helloProvider) {



    helloProvider.init({
        facebook: '1828797027346046',
        twitter:'878476478'
    },{
      scope: 'email'
    },
    function(resp){
    console.log('resp !!!!!!!!!!!' , resp);

    });



}])
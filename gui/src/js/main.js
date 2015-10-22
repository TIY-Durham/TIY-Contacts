;(function(){ // IIFE -- Immediately Invoked Function Expression
  angular.module('TIY-Contacts', [ 'ngRoute' ], function($routeProvider){
    $routeProvider
      .when('/', {
        redirectTo: '/contacts'
      })
      .when('/contacts', {
        templateUrl: '...'
      })
  })
})(); // END IIFE

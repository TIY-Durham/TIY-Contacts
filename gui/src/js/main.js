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
    .run(function($rootScope, $http){
      $rootScope.contacts = [
        {
          first_name: 'John',
          last_name: 'Doe',
          company: 'The Iron Yard',
        },
        {
          first_name: 'John',
          last_name: 'Doe',
          company: 'The Iron Yard',
        },
        {
          first_name: 'John',
          last_name: 'Doe',
          company: 'The Iron Yard',
        }
      ];

      $http.get('//localhost:3010/contacts.json')
        .then(function(response){
          $rootScope.contacts = response.data;
        })
    })
})(); // END IIFE

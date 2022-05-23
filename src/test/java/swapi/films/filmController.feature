Feature:Film Controller Feature

  Background:
    * url baseUrl
    * path 'films'

  Scenario: SW001.Check Film Name List
    * method GET
    * status 200
    * match response.count == 6
    * match response.results[0].title == 'A New Hope'
    * match response.results[1].title == 'The Empire Strikes Back'
    * match response.results[2].title == 'Return of the Jedi'
    * match response.results[3].title == 'The Phantom Menace'
    * match response.results[4].title == 'Attack of the Clones'
    * match response.results[5].title == 'Revenge of the Sith'

  Scenario: SW002.Log Film Lists
    * method GET
    * status 200
    * match response.count == 6
    * def films = response.results
    * def filmList = function(array){ for (var i = 0; i < array.length; i++) karate.log(array[i].episode_id,' - ', array[i].title);}
    * call filmList films
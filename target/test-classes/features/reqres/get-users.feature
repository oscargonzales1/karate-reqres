Feature: Obtener lista de usuarios

  Background:
    * url baseUrl

  Scenario: Obtener usuarios en página 2
    Given path 'users'
    And param page = 2
    And headers headers
    When method get
    Then status 200
    And match response.page == 2
    And match response.data[0].email contains '@reqres.in'

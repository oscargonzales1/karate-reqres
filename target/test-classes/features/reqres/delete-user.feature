Feature: Eliminar un usuario

  Background:
    * url baseUrl

  Scenario: Eliminar usuario con ID válido
    Given path 'users', 2
    And headers headers
    When method delete
    Then status 204

Feature: Obtener un usuario por su ID

  Background:
    * url baseUrl

  Scenario Outline: Consultar usuario con ID existente
    Given path 'users', <id>
    And headers headers
    When method get
    Then status 200
    And match response.data.id == <id>

    Examples:
      | id |
      | 1  |
      | 2  |
      | 3  |

Feature: Actualizar un usuario existente

  Background:
    * url baseUrl

  Scenario: Actualizar datos de un usuario
    Given path 'users', 2
    And request { name: 'Oscar Updated', job: 'Lead QA' }
    And headers headers
    When method put
    Then status 200
    And match response.name == 'Oscar Updated'
    And match response.job == 'Lead QA'
    And match response.updatedAt != null

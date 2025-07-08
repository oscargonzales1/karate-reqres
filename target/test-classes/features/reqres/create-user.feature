Feature: Crear un nuevo usuario

  Background:
    * print 'Testing baseUrl:', baseUrl
    * url baseUrl

  Scenario Outline: Crear usuarios con datos válidos
    Given path 'users'
    And headers headers
    And request { name: '<name>', job: '<job>' }
    When method post
    Then status 201
    And match response.name == '<name>'
    And match response.job == '<job>'
    And match response.id != null

    Examples:
      | name   | job          |
      | Oscar  | QA Engineer  |
      | María  | Developer    |
      | Pedro  | Designer     |

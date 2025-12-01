Feature: update user

  Background:
    * configure logPrettyResponse = true
    * configure logPrettyRequest = true
    * configure headers = { x-api-key: 'reqres-free-v1' }
    * url api.baseUrl
    * path "/api/users/2"

  @UpdateBaseUser
  Scenario: Update an base user
    Given request { email: "base@prueba.tecnica" }
    When method put
    Then status 200
    And def contactId = $.id
    And def updateBasedAt = $.updatedAt

  # Scenario that calls a previous one of the same feature
  # to retrieve the updatedAT field of the user id 2 and thus be able
  # to compare differences between the update fields of both transactions
  #
  # In this case, the scenario are invoking the `UpdateBaseUser` scenario from
  # the `user-put.feature` file. The `call` keyword will replace the
  # `Given` steps with the steps defined in the `UpdateBaseUser`
  # scenario, and then execute the remaining steps.

  @UpdateUser
  Scenario: Update an user
    * call read("../put/user-put.feature@UpdateBaseUser")
    Given path "/api/users/" + contactId
    And request { email: "update@prueba.tecnica" }
    When method put
    * print response.updatedAt
    * print updateBasedAt
    Then status 200
    * match response.updatedAt != updateBasedAt





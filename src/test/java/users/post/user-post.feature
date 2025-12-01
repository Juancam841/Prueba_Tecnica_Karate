Feature: Post user

  Background:
    * configure logPrettyResponse = true
    * configure logPrettyRequest = true
    * configure headers = { x-api-key: 'reqres-free-v1' }
    * url api.baseUrl

  # Create a user
  #
  # This scenario uses the `path` keyword to set the request path to "/api/users/"
  # The `Given` step is used to set the request body to a JSON object with the
  # `email` field set to "juanca@prueba.tecnica".
  # The `When` step uses the `post` method to send the request.
  # The `Then` step checks that the response status is 201 (Created) and that
  # the `id` and `createdAt` fields in the response body are not null. It also
  # uses the `def` keyword to save the `id` and `createdAt` fields in variables
  # named `contactId` and `createdAt` respectively.
  @CreateUser
  Scenario: Post a user
    * path "/api/users/"
    Given request {"email": "juanca@prueba.tecnica"}
    When method post
    * print response
    Then status 201
    And match response.id == '#notnull'
    And match response.createdAt == '#notnull'
    And def contactId = $.id
    And def createdAt = $.createdAt



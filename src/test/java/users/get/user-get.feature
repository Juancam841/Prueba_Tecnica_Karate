Feature: Get user

  Background:
    * url api.baseUrl
    * configure headers = { x-api-key: 'reqres-free-v1' }
    * def emailRegex = '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$'

  # Get a user
  #
  # This scenario sends a GET request to the "/api/users/" endpoint with a
  # query parameter "page" set to 2. It then checks that the response status
  # is 200 (OK), prints the response data, and checks that each user email in the
  # response data matches the email regex pattern, and that the length of the
  # response data is greater than 5.
  @GetUsers
  Scenario: Get a user
    Given path '/api/users/'
    And param page = 2
    When method get
    Then status 200
    * print response.data
    And match each response.data[*].email == '#regex ' + emailRegex
    And assert response.data.length > 5
    * print response.data.length


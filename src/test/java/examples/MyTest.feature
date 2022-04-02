Feature: Test Demo

Background:
  * url 'https://jsonplaceholder.typicode.com'

  @name=first
  Scenario: get all users and then get the first user by id
    Given path 'users'
    When method get
    Then status 200

    * def first = response[0]

    Given path 'users', first.id
    When method get
    Then status 200

  @name=second
  Scenario: create a user and then get it by id

    * def user =
"""
{
    "name": "Test User",
    "username": "testuser",
    "email": "test@user.com",
    "address": {
      "street": "Has No Name",
      "suite": "Apt. 123",
      "city": "Electri",
      "zipcode": "54321-6789"
    }
}
"""

    Given url 'https://jsonplaceholder.typicode.com/users'
    And request user
    When method post
    Then status 201

    * def id = response.id
    * print 'created id is: ' + id

  Scenario: Testing valid GET endpoint1
    Given url 'https://www.testrelic.com/'
    When method GET
    Then status 200
    And match response.name contains "Luke Skywalker"
    And match response == { name: 'Billie' }
    And match response.name == "Billie"
    And match response == { id: '#notnull', name: 'Billie' }
    Then match response/cat/name == 'Billie'
    Then match /cat/name == 'Billie'
    Then assert responseStatus == 200 || responseStatus == 204
    #https://github.com/karatelabs/karate#response

  Scenario: Testing valid GET endpoint2
    Given url 'https://www.testrelic.com/'
    And request { name: 'Billie'}
    When method post
    Then status 201
    And match response == { id: '#notnull', name: 'Billie' }

    Given path response.id
    When method get
    Then status 200
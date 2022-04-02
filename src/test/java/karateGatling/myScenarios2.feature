Feature: Test Demo

  @name=performance
  Scenario: Get Performance Testing Ads
    Given url 'https://www.testrelic.com/blog/mjob_category/performance-testing/'
    When method GET
    Then status 200
    And match response.name contains "Luke Skywalker"
    And match response == { name: 'Billie' }
    And match response.name == "Billie"
    And match response == { id: '#notnull', name: 'Billie' }
    Then match response/cat/name == 'Billie'
    Then match /cat/name == 'Billie'
    Then assert responseStatus == 200 || responseStatus == 204

  @name=crowd
  Scenario: Get Test Automation Ads
    Given url 'https://www.testrelic.com/blog/mjob_category/crowd-testing/'
    When method GET
    Then status 200
    And match response.name contains "Luke Skywalker"
    And match response == { name: 'Billie' }
    And match response.name == "Billie"
    And match response == { id: '#notnull', name: 'Billie' }
    Then match response/cat/name == 'Billie'
    Then match /cat/name == 'Billie'
    Then assert responseStatus == 200 || responseStatus == 204

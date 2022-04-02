Feature: Test Demo

  Background:
    * url 'https://www.testrelic.com/'

  Scenario: Get Home Page
    Given path '/'
    When method get
    Then status 200

  Scenario: Get Help Center
    Given path 'f-a-q'
    When method get
    Then status 200

  Scenario: Get Blog Page
    Given path 'blog'
    When method get
    Then status 200

  Scenario: Get Projects Page
    Given path 'projects'
    When method get
    Then status 200
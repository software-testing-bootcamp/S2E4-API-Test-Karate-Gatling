Feature: HERE Geocoding and Search Tests

  Background:
    * def discover_api_url = 'https://discover.search.hereapi.com/v1/discover'
    * def auto_suggest_api_url = 'https://autosuggest.search.hereapi.com/v1/autosuggest'
    * def geocode_api_url = 'https://geocode.search.hereapi.com/v1/geocode'
    * def reverse_geocode_api_url = 'https://revgeocode.search.hereapi.com/v1/revgeocode'
    * def browse_api_url = 'https://browse.search.hereapi.com/v1/browse'
    * def api_key = 'YOUR_API_KEY_FROM_HERE.COM'

  @name=regression
  Scenario: Discover places using its name
    Given url discover_api_url
    And params ({ at: '41.11002,29.03154', q: 'starbucks', limit: 5, in: 'countryCode:TUR', apiKey : api_key })
    When method get
    Then status 200
    And match response.items[1].title == 'Starbucks'

  Scenario: Auto suggest places with incomplete query
    Given url auto_suggest_api_url
    And params ({ at: '41.11002,29.03154', q: 'star', limit: 5, in: 'countryCode:TUR', lang: 'tr', apiKey : api_key })
    When method get
    Then status 200
    And match response.items[1].title == 'Starbucks'

  Scenario: Find the geo-coordinates of a known address
    Given url geocode_api_url
    And params ({ q: 'istinye+park', lang: 'tr-TUR', apiKey : api_key })
    When method get
    Then status 200

  Scenario: Find the nearest address to specific geo-coordinates
    Given url reverse_geocode_api_url
    And params ({ at: '41.11002,29.03154', lang: 'tr-TUR', apiKey : api_key })
    When method get
    Then status 200

  Scenario: Browse by filtering items with their category
    Given url browse_api_url
    And params ({ at: '41.11002,29.03154', lang: 'tr-TUR', limit: 5, categories: '100-1100-0010', apiKey : api_key })
    When method get
    Then status 200

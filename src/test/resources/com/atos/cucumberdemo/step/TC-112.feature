Feature: TC-112
  TC112

  To check Hotel name, Location, room type, Total Day, price per night are same in Booking confirmation page as they were selected in previous screen
1. Launch hotel reservation application using URL as in test data.
2. Login to the application using username and password as in test data.
3. Select location as in test data. Select Hotel as in test data.
4. Select room type as in test data.
5. Select no-of-rooms as in test data.
6. Enter check-out-date as in test data.
7. Select No-of-adults as in test data.
8. Select No-of-children as in test data.
9. Click on Search button.
10. Select the hotel and click on continue button
11. Verify that Final Billed Price is being calculated as (price-per-night*no-of-rooms*no-of-days

  URL: http://adactin.com/HotelApp/index.php
  User:{test username}
  Password:{test password}
  Location: Sydney
  Hotel: hotel Creek
  Room type: standard
  No-of-rooms:2
  Check-in-date: today’s date
  Check-out-date:today+1 date
  No-of-adults:1
  No-of-children: 0

  Background: user logs in and navigates tru the first screen
    Given I am on the adactin site
    And I log in with my credentials
    And I am logged in
    When I set the location to "Sydney"
    And I select Hotel "Hotel Creek"
    And I select Room type "Standard"
    And I select the number of rooms "2"
    And I select the amount of adults "1"
    And I select the amount of children "0"
    And the day that I check in is "0" days from now
    And the day that I check out is "1" days from now
    Then The right hotel should be shown

  Scenario: Under construction Verify that Final Billed Price is being calculated as (price-per-night*no-of-rooms*no-of-days
    Given I am on the Select Hotel page
    When I select the first hotel
    Then The "Book A Hotel" page should be shown
    And The price should be the same as the previous screen
Feature: Buy products
    As a customer
    I want to buy products
#Rachata kaewviset 6410406843
Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Donut" with price 30.00 and stock of 10 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00

Scenario: Buy donut
    When I buy "Donut" with quantity 8
    Then total should be 240.00
    And total "Donut" should be 2
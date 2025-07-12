Feature: Points of Sale Management
  This feature allows users to create and modify points of sale (POS).

  Scenario: Insert and retrieve two POS
    Given an empty POS list
    When I insert POS with the following elements
      | name                   | description             | type             | campus | street          | houseNumber | postalCode | city     |
      | Lidl (Nürnberger Str.) | Vending machine at Lidl | VENDING_MACHINE  | ZAPF   | Nürnberger Str. | 3a          | 95448      | Bayreuth |
      | New Cafe               | Fancy new cafe          | CAFE             | MAIN   | Teststraße      | 99          | 12345      | New City |
    Then the POS list should contain the same elements in the same order


  Scenario: Update one of three POS
    Given an empty POS list
    And I insert POS with the following elements
      | name              | description        | type            | campus | street       | houseNumber | postalCode | city     |
      | Schaller Bakery   | Tasty treats       | CAFE            | MAIN   | Mainstraße   | 1           | 95444      | Bayreuth |
      | Campus Grill      | BBQ food truck     | FOOD_TRUCK      | ZAPF   | Grillweg     | 5           | 95445      | Bayreuth |
      | Coffee Corner     | Original coffee    | CAFE            | MAIN   | Kaffeegasse  | 12          | 95448      | Bayreuth |
    When I update the POS "Coffee Corner" with the description "Updated specialty coffee"
    Then the POS "Coffee Corner" should have the description "Updated specialty coffee"
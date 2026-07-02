/*
Dart program to demonstrate nested collections
Author: Cyrus
Description: This program demonstrates nested collections in dart, simulating a restaurant where customers order different food items.
Each customer is represented by a map containing
 - customer name
 - country
 - a nested list of food items ordered.

 the program then traverses the nested collections and displays each customer's
 order in a clear and readable format

 Date: 2026-07-02
 */

void main() {
  /// A list containing restaurant customers.
  ///
  /// Each customer is stored as a map.
  /// The 'orders' key contains a nested list of food items.
  List<Map<String, dynamic>> customers = [
    {
      'name': 'Alice',
      'country': 'Kenya',
      'orders': ['Nyama Choma', 'Ugali', 'Kachumbari']
    },
    {
      'name': 'Bob',
      'country': 'United States',
      'orders': ['Cheeseburger', 'French Fries']
    },
    {
      'name': 'Chao',
      'country': 'China',
      'orders': ['Kung Pao Chicken', 'Spring Rolls', 'Fried Rice']
    }
  ];

  print('=======================================');
  print('       RESTAURANT ORDER REPORT         ');
  print('=======================================');

  // Traverse the outer collection (List of Customers)
  for (var customer in customers) {
    print('\nCustomer: ${customer['name']} (${customer['country']})');
    print('Orders:');

    // Extract the nested collection (List of Food Items)
    List<String> foodItems = customer['orders'];

    // Traverse the inner collection
    for (int i = 0; i < foodItems.length; i++) {
      print('  ${i + 1}. ${foodItems[i]}');
    }
    print('-' * 39);
  }
}

import 'dart:math'; // Used to generate a random order number.
import 'dart:async'; // Provides support for asynchronous programming (Future, async, await).

// The main() function is the starting point of every Dart program.
void main() {
  print("Welcome to Dart Pizzeria");

  // Call placeOrder() to place an order for a Pepperoni pizza.
  // Since placeOrder() returns a Future, we use .then() to handle
  // the successful result and .catchError() to handle any errors.
  placeOrder("Pepperoni").then((orderNumber) {
    // This runs only if the order is completed successfully.
    print("Order #$orderNumber is ready for pickup!");
  }).catchError((error) {
    // This runs if an error occurs anywhere inside placeOrder().
    print("Order failed: $error");
  });

  // Simulates processing multiple orders.
  processMultipleOrders();
}

// This function places a pizza order.
// Future<int> means:
// - Future = the result will be available later.
// - int = the value returned later is an integer (the order number).
Future<int> placeOrder(String pizzaType) async {
  print("\nPlacing order for $pizzaType...");

  try {
    // Step 1: Check if all ingredients are available.
    await checkIngredients(pizzaType);

    // Step 2: Prepare the pizza.
    // await pauses execution until preparePizza() finishes.
    final prepTime = await preparePizza(pizzaType);

    // Display how long the preparation took.
    print("Pizza prepared in $prepTime minutes.");

    // Step 3: Deliver the pizza.
    await deliverPizza();

    // Generate a random 4-digit order number.
    final orderNumber = Random().nextInt(9000) + 1000;

    // Return the completed order number.
    return orderNumber;
  } catch (e) {
    // If any step above throws an error, execution jumps here.
    print("Error in order processing:\n$e");

    // Throw a new, more descriptive exception.
    throw Exception("Failed to complete order for $pizzaType");
  }
}

// Simulates checking whether the required ingredients exist.
Future<void> checkIngredients(String pizzaType) async {
  print("Checking ingredients for $pizzaType...");

  // Simulate a delay of 1 second.
  await Future.delayed(const Duration(seconds: 1));
}

// Simulates preparing the pizza.
Future<int> preparePizza(String pizzaType) async {
  print("Preparing $pizzaType pizza...");

  // Simulate preparation time.
  await Future.delayed(const Duration(seconds: 2));

  // Return the preparation time.
  return 2;
}

// Simulates delivering the pizza.
Future<void> deliverPizza() async {
  print("Delivering pizza...");

  // Simulate delivery delay.
  await Future.delayed(const Duration(seconds: 1));
}

// Simulates processing multiple orders.
// In a real application, this could process several pizza orders
// one after another or at the same time.
Future<void> processMultipleOrders() async {
  print("\nProcessing multiple orders...");

  // Simulate work being done.
  await Future.delayed(const Duration(seconds: 1));

  print("All orders have been processed.");
}
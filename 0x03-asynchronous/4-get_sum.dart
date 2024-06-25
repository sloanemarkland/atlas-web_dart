import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    // Initialize the total price
    double totalPrice = 0.0;

    // Fetch the user data
    String userData = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(userData);
    String userId = user['id'];

    // Fetch the user orders
    String userOrdersData = await fetchUserOrders(userId);
    List<String> orders = List<String>.from(jsonDecode(userOrdersData));



    // Fetch the price for each product and calculate the total price
    for (String product in orders) {
      String productPriceData = await fetchProductPrice(product);
      double productPrice = double.parse(productPriceData);
      totalPrice += productPrice;
    }

    // Return the total price
    return totalPrice;
  } catch (error) {
    // Return -1 if an error occurs
    return -1;
  }
}

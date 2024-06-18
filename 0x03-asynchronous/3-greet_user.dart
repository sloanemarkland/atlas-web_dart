import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    // Fetch the user data
    String userData = await fetchUserData();
    
    // Parse the JSON string
    var decodedData = jsonDecode(userData);
    
    // Extract the username
    String username = decodedData['username'];
    
    // Return the greeting message
    return 'Hello $username';
  } catch (error) {
    // Return the error message if an error occurs
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    // Check user credentials
    bool credentialsValid = await checkCredentials();
    
    // Print whether the user exists
    print('There is a user: $credentialsValid');
    
    if (credentialsValid) {
      // Call greetUser and return its value
      return await greetUser();
    } else {
      // Return the error message for wrong credentials
      return 'Wrong credentials';
    }
  } catch (error) {
    // Return the error message if an error occurs
    return 'error caught: $error';
  }
}

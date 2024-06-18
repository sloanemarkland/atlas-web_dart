import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String userData = await fetchUserData();
  
  // Parse JSON string
  var decodedData = jsonDecode(userData);
  
  // Extract and return user ID
  return decodedData['id'];
}

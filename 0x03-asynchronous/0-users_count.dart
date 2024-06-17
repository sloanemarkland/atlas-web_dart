// create the usersCount function that prints the num of users
import '0-util.dart';

Future<void> usersCount() async {
  final userCount = await fetchUsersCount();

  print('$userCount');
}

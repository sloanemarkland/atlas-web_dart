// create the usersCount function that prints the num of users
import 'dart:async';

Future<void> usersCount() async {
  final userCount = await fetchUsersCount();

  print('$userCount');
}

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

void main() async {
  await usersCount();
}

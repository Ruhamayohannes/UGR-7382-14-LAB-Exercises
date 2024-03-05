import 'dart:async';

Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 2), () => 'User data fetched');
}

void fetchUserDataWithAwait() async {
  print('Fetching user data with async/await...');
  try {
    var userData = await fetchUserData();
    print(userData); 
  } catch (e) {
    print('An error occurred: $e');
  }
}

void fetchUserDataWithThen() {
  print('Fetching user data with Future.then...');
  fetchUserData().then((data) {
    print(data); 
  }).catchError((e) {
    print('An error occurred: $e');
  });
}

void main() {
  fetchUserDataWithAwait();
  Future.delayed(Duration(seconds: 3), () => fetchUserDataWithThen());
}

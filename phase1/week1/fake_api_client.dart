Future<String> fetchUser() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Israel';
}

Future<int> fetchBalance() async {
  await Future.delayed(Duration(seconds: 2));
  return 1500000;
}

Future<String> fetchTransaction() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('Network error');
}

class FakeApiClient {
  Future<Map<String, dynamic>> login(String email, String password) async {
    print('Connecting to server');
    await Future.delayed(Duration(seconds: 2));

    if (email == 'israel@test.com' && password == '123456') {
      return {'succes': true, 'name': 'Israel', 'token': 'abc123xyz'};
    } else {
      throw Exception('Invalid Credentials');
    }
  }
}

void main() async {
  // print('Loading app...');

  // String user = await fetchUser();
  // int balance = await fetchBalance();

  // print('Welcome: $user');
  // print('Balance: $balance');

  // try {
  //   print('loading transactions');
  //   String transaction = await fetchTransaction();
  //   print(transaction);
  // } catch (e) {
  //   print('Error: $e');
  // }

  // print('App continues running');

  FakeApiClient api = FakeApiClient();

  try {
    final response = await api.login('israel@test.com', '12356');

    print('Login successful');
    print('Welcome: ${response['name']}');
    print('Token: ${response['token']}');
  } catch (e) {
    print('Login failed: $e');
  }
}

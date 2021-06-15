import 'package:flutter/material.dart';
import 'package:pay_pwd/pay_pwd.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            pay(
              context: context,
              hintText: 'Buy Goods',
              amount: '199.99',
              onSubmit: (password) async {
                await Future.delayed(const Duration(seconds: 1));
                if (password != '000000') {
                  return 'Password Incorrect';
                }
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Successful')));
              },
            );
          },
          child: const Text('Pay'),
        ),
      ),
    );
  }
}

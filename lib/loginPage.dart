import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            color: const Color.fromARGB(255, 46, 46, 46),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _loginText(),
                  const SizedBox(
                    height: 20,
                  ),
                  _emailForm(),
                  const SizedBox(height: 8.0),
                  _passwordForm(),
                  const SizedBox(height: 8.0),
                  _registerText(),
                  _forgotPass(),
                  _butLogin(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _forgotPass() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.lightBlue,
                    textStyle: const TextStyle(fontSize: 14)),
                onPressed: () {},
                child: const Text('Forgot Password?'))
          ],
        )
      ],
    );
  }

  Widget _registerText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              children: [
                Text(
                  'You Dont Have Account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.lightBlue,
                        textStyle: const TextStyle(fontSize: 14)),
                    onPressed: () {},
                    child: const Text('Register'))
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _butLogin() {
    return ElevatedButton(
      onPressed: () {
        // Login logic here
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: const Text('Login'),
    );
  }

  Widget _passwordForm() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter Your Password',
        border: OutlineInputBorder(),
      ),
      obscureText: true,
    );
  }

  Widget _emailForm() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter Your Email',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _loginText() => const Text(
        'Login',
        style: TextStyle(color: Colors.white),
      );
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

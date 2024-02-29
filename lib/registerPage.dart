import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  _regisText(),
                  const SizedBox(
                    height: 20,
                  ),
                  _emailForm(),
                  const SizedBox(height: 8.0),
                  _passwordForm(),
                  const SizedBox(height: 8.0),
                  _passConfirForm(),
                  const SizedBox(height: 10.0),
                  _loginText(),
                  const SizedBox(height: 20.0),
                  _butRegister(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              children: [
                Text(
                  'Already Have Account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.lightBlue,
                        textStyle: const TextStyle(fontSize: 14)),
                    onPressed: () {},
                    child: const Text('Login'))
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _butRegister() {
    return ElevatedButton(
      onPressed: () {
        // Login logic here
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: const Text('Register'),
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

  Widget _passConfirForm() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Confirm Your Password',
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

  Widget _regisText() => const Text(
        'Register',
        style: TextStyle(color: Colors.white),
      );
}

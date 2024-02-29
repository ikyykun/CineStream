import 'package:flutter/material.dart';

class RecoveryPage3 extends StatefulWidget {
  const RecoveryPage3({super.key});

  @override
  State<RecoveryPage3> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage3> {
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
                  _description(),
                  const SizedBox(
                    height: 30,
                  ),
                  _passwordForm(),
                  const SizedBox(
                    height: 20,
                  ),
                  _passConfirmForm(),
                  const SizedBox(
                    height: 30,
                  ),
                  _butBack()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _passConfirmForm() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Confirm Your Password',
        border: OutlineInputBorder(),
      ),
      obscureText: true,
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

  Widget _butBack() {
    return ElevatedButton(
      onPressed: () {
        // Login logic here
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: const Text('Back To Login'),
    );
  }

  Widget _description() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'Change Your Password',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        )
      ],
    );
  }

  Widget _regisText() => const Text(
        'Register',
        style: TextStyle(color: Colors.white),
      );
}

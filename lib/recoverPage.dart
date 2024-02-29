import 'package:flutter/material.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
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
                    height: 40,
                  ),
                  _emailForm(),
                  const SizedBox(
                    height: 20,
                  ),
                  _butConfirm()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _butConfirm() {
    return ElevatedButton(
      onPressed: () {
        // Login logic here
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: const Text('Confirm'),
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

  Widget _description() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'Please enter your email,\nSo we can give you the\ncode',
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

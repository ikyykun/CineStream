import 'package:flutter/material.dart';

class RecoveryPage4 extends StatefulWidget {
  const RecoveryPage4({super.key});

  @override
  State<RecoveryPage4> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage4> {
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
                    height: 50,
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
              'Finally! Your password\nwas recovered. Please\nlogin with your account',
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

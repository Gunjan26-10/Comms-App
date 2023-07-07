import 'package:flutter/material.dart';
import 'package:comms_app/RoundedButtons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Comms_App'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          RoundedButton(Colors.lightBlueAccent, 'Log In', () {
            Navigator.pushNamed(context, 'login_screen');
          }),
          RoundedButton(Colors.lightBlueAccent, 'Sign Up', () {
            Navigator.pushNamed(context, 'registration_screen');
          }),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:comms_app/Constants.dart';
import 'package:comms_app/RoundedButtons.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    String email = "";
    String password = "";
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: (value) {
              email = value;
            },
            decoration: kInputDec.copyWith(
              hintText: 'Enter your email',
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              password = value;
            },
            decoration: kInputDec.copyWith(hintText: 'Enter your Password'),
          ),
          RoundedButton(Colors.lightBlueAccent, 'Sign Up', () {
            final newUser = _auth.createUserWithEmailAndPassword(email: email, password: password);
            Navigator.pushNamed(context, 'chat_screen');
          }),
        ],
      ),
    );
  }
}
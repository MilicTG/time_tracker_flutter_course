import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/sign_in/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Time Tracker',
        ),
        elevation: 2.0,
      ),
      backgroundColor: Colors.grey[200],
      body: _buildContext(),
    );
  }

  Widget _buildContext() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: 'Sign in with Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: _signInWithGoogle,
          ),
        ],
      ),
    );
  }

  void _signInWithGoogle() {
    // TODO: Auth with Google
  }
}

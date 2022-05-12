// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

import '../../common_widgets/form_submit_button.dart';

enum EmailSigmImFormType { signIn, register }

class EmailSignInForm extends StatefulWidget {
  const EmailSignInForm({Key? key, required this.auth}) : super(key: key);

  final AuthBase auth;

  @override
  State<EmailSignInForm> createState() => _EmailSignInFormState();
}

class _EmailSignInFormState extends State<EmailSignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  EmailSigmImFormType _formType = EmailSigmImFormType.signIn;

  void _submit() {
    print('email: ${_emailController}, password: ${_passwordController}');
  }

  void _toggleFormType() {
    setState(() {
      _formType = _formType == EmailSigmImFormType.signIn
          ? EmailSigmImFormType.register
          : EmailSigmImFormType.signIn;
    });
    _emailController.clear();
    _passwordController.clear();
  }

  List<Widget> _buildChildren() {
    final primaryText = _formType == EmailSigmImFormType.signIn
        ? 'Sign In'
        : 'Create an account';

    final secondaryText = _formType == EmailSigmImFormType.signIn
        ? 'Needa an account? Register'
        : 'Have an account? Sign in';

    return [
      TextField(
        controller: _emailController,
        decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'test@test.com',
        ),
      ),
      const SizedBox(
        height: 8.0,
      ),
      TextField(
        controller: _passwordController,
        decoration: const InputDecoration(
          labelText: 'Password',
        ),
        obscureText: true,
      ),
      const SizedBox(
        height: 8.0,
      ),
      FormSubmitButton(
        onPressed: _submit,
        text: primaryText,
      ),
      const SizedBox(
        height: 8.0,
      ),
      TextButton(
        onPressed: _toggleFormType,
        child: Text(
          secondaryText,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}

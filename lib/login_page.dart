/* 
refer to: Create the Authentication flow
https://aws.amazon.com/getting-started/hands-on/build-flutter-app-amplify/module-one/
*/

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /* 1 */
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    /* 2 */
    return Scaffold(
      /* 3 */
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 40),
        /* 4 */
        child: Stack(children: [
          /* Login Form */
          _loginForm(),

          /* 6 */
          /* Sign Up Button */
          Container(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              onPressed: () {},
              child: Text('Don\'t have an account? Sign up.')),
            )
        ])
      )
    );
  }

  /* 5 */
  Widget _loginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /* Useername Textfield */
        TextField(
          controller: _usernameController,
          decoration:
            InputDecoration(icon: Icon(Icons.mail), labelText: 'Username'), 
        ),

        /* Password Textfield */
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
            icon: Icon(Icons.lock_open), labelText: 'Password'),
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          ),

        /* Login Button */
        FlatButton(
          onPressed: _login,
          child: Text('Login'),
          color: Theme.of(context).accentColor),
      ],
    );
  }

  /* 7 */
  void _login() {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    print('username: $username');
    print('password: $password');
  }

}


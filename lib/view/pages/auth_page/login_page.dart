import 'package:flutter/material.dart';
import 'package:flutter_jobapp/constants/colors.dart';
import 'package:flutter_jobapp/constants/common_button.dart';
import 'package:flutter_jobapp/constants/mytextfiled.dart';
import 'package:flutter_jobapp/view/pages/auth_page/register_page.dart';
import 'package:flutter_jobapp/view/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            const Icon(
              Icons.work,
              size: 200,
            ),
            const SizedBox(height: 24),
            const Text(
              'Login Now',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: deepBlue,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const MyTextFiled(name: "Email", hintText: 'Enter Your email'),
            const SizedBox(height: 16),
            const MyTextFiled(name: "Password", hintText: 'Enter password'),
            const SizedBox(height: 16),
            CommonButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              color: deepBlue,
              widget: const Text(
                'Log In',
                style: TextStyle(fontSize: 16, color: lightGray),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don’t have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: deepBlue),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Text.rich(
              TextSpan(
                text:
                    'By creating or logging into an account you are agreeing\n with our ',
                style: TextStyle(fontSize: 12),
                children: [
                  TextSpan(
                    text: 'Terms and Conditions',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(text: ' and '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

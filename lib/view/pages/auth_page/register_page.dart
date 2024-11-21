import 'package:flutter/material.dart';
import 'package:flutter_jobapp/constants/colors.dart';
import 'package:flutter_jobapp/constants/common_button.dart';
import 'package:flutter_jobapp/constants/mytextfiled.dart';
import 'package:flutter_jobapp/view/pages/auth_page/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              'Register Now',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: deepBlue,
              ),
              textAlign: TextAlign.center,
            ),
            const MyTextFiled(
                name: "Username", hintText: 'Enter Your username'),
            const SizedBox(height: 8),
            const MyTextFiled(name: "Email", hintText: 'Enter Your email'),
            const SizedBox(height: 16),
            const MyTextFiled(name: "Password", hintText: 'Enter password'),
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            CommonButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              color: deepBlue,
              widget: const Text(
                'Register',
                style: TextStyle(fontSize: 16, color: lightGray),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: deepBlue),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

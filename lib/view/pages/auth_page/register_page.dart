import 'package:flutter/material.dart';
import 'package:flutter_jobapp/constants/colors.dart';
import 'package:flutter_jobapp/constants/common_button.dart';
import 'package:flutter_jobapp/constants/mytextfiled.dart';
import 'package:flutter_jobapp/view/pages/auth_page/login_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            Container(
              height: 230,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SvgPicture.asset('assets/svgs/login_svg.svg'),
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
            const MyTextFiled(name: "Email", hintText: 'Enter Your email'),
            const SizedBox(height: 16),
            const MyTextFiled(name: "Mobile", hintText: 'Enter Your mobile'),
            const SizedBox(height: 16),
            const MyTextFiled(name: "Password", hintText: 'Enter password'),
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

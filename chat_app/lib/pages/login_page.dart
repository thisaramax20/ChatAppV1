import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final void Function()? onTap;
  LoginPage({super.key, required this.onTap});

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.message,
              size: 60,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("Welcome back, you've been missed"),
            MyTextfield(
              hintText: "Email",
              obscureText: false,
              textEditingController: _emailController,
            ),
            MyTextfield(
              hintText: "Password",
              obscureText: true,
              textEditingController: _passwordController,
            ),
            MyButton(
              text: "Login",
              onTap: login,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Not a member...?"),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    "Register Now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

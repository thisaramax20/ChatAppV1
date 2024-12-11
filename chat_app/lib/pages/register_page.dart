import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final void Function()? onTap;
  RegisterPage({super.key, this.onTap});

  void register() {}

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
            const Text("Let's Create an account for you"),
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
            MyTextfield(
              hintText: "Password",
              obscureText: true,
              textEditingController: _confirmPasswordController,
            ),
            MyButton(text: "Login", onTap: register),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account...?"),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    "Login Now",
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

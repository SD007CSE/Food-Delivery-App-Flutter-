// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_text_field.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _confirmPasswordNode = FocusNode();

  void register() async {
    final _authService = AuthService();

    //check if password match -> create user
    if (passwordController.text == confirmPasswordController.text) {
      try {
        await _authService.signUpWithEmailPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }else{
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text("Passwords does not match!"),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top + 25),
          const SizedBox(height: 25),
          Text(
            "Let's create an account",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height: 25),
          MyTextField(
              controller: emailController,
              currentNode: _emailNode,
              nextNode: _passwordNode,
              hintText: "Email",
              obscureText: false),
          const SizedBox(height: 10),
          MyTextField(
              controller: passwordController,
              currentNode: _passwordNode,
              nextNode: _confirmPasswordNode,
              hintText: "Password",
              obscureText: true),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          MyTextField(
              controller: confirmPasswordController,
              currentNode: _confirmPasswordNode,
              nextNode: null,
              hintText: "Confirm password",
              obscureText: true),
          const SizedBox(height: 10),
          MyButton(onTap: register, text: 'Sign Up'),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary)),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Login now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold)),
              )
            ],
          )
        ],
      ),
    );
  }
}

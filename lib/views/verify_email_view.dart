import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VeryifyEmailView extends StatefulWidget {
  const VeryifyEmailView({super.key});

  @override
  State<VeryifyEmailView> createState() => _VeryifyEmailViewState();
}

class _VeryifyEmailViewState extends State<VeryifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify email'),
      ),
      body: Column(
        children: [
          const Text('Please verify your email'),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text('Send email verification'),
          )
        ],
      ),
    );
  }
}

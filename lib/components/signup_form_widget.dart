import 'package:flutter/material.dart';
import 'package:trevalin_app/pages/login_page.dart';

import '../utils/style.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(small),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Full name',
                hintStyle: TextStyle(color: text),
                border: const OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.person_2_rounded,
                  color: primaryColor,
                ),
                labelStyle: TextStyle(color: text)),
          ),
          SizedBox(height: small),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: text),
                border: const OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: primaryColor,
                ),
                labelStyle: TextStyle(color: text)),
          ),
          SizedBox(height: small),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Phone No',
                hintStyle: TextStyle(color: text),
                border: const OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.phone,
                  color: primaryColor,
                ),
                labelStyle: TextStyle(color: text)),
          ),
          SizedBox(height: small),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: text),
                border: const OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.fingerprint_rounded,
                  color: primaryColor,
                ),
                labelStyle: TextStyle(color: text)),
          ),
          SizedBox(height: small),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: black,
              ),
              child: Text(
                'Signup'.toUpperCase(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

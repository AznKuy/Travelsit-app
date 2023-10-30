import 'package:flutter/material.dart';
import 'package:trevalin_app/pages/signup.dart';

import '../utils/style.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OR',
          style: heading4,
        ),
        SizedBox(
          height: small,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            label: Text(
              'Sign-in with Google',
              style: TextStyle(color: heading),
            ),
            icon: const Image(
              image: AssetImage('assets/images/google_logo.png'),
              width: 20,
            ),
          ),
        ),
        SizedBox(
          height: small,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpPage(),
              ),
            );
          },
          child: Text.rich(
            TextSpan(
                text: 'Already Have an Account? ',
                style: TextStyle(color: heading),
                children: [
                  TextSpan(text: 'Signup', style: TextStyle(color: accent))
                ]),
          ),
        )
      ],
    );
  }
}

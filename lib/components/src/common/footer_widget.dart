import 'package:flutter/material.dart';
import 'package:trevalin_app/pages/login_page.dart';
import 'package:trevalin_app/pages/signup.dart';
import '../../../utils/style.dart';


class FooterWidget extends StatelessWidget {
  const FooterWidget({
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
        const SizedBox(
          height: 10,
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
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text.rich(
            TextSpan(
                text: 'Already Have an Account? ',
                style: TextStyle(color: heading),
                children: [
                  TextSpan(text: 'Login', style: TextStyle(color: accent))
                ]),
          ),
        )
      ],
    );
  }
}

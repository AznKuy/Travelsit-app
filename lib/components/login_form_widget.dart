import 'package:flutter/material.dart';
import 'package:trevalin_app/pages/home_page.dart';
import '../utils/style.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: small - 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Form
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person_2_rounded),
              prefixIconColor: primaryColor,
              hintText: 'Masukkan email',
              hintStyle: TextStyle(color: icon),
              border: const OutlineInputBorder(),
            ),
          ),
          SizedBox(height: small),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint_outlined),
                prefixIconColor: primaryColor,
                hintText: 'Masukkan password',
                hintStyle: TextStyle(color: icon),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
                suffixIcon: const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_rounded),
                )),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password ?',
                  style: TextStyle(color: accent),
                )),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: black,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Text(
                'Login'.toUpperCase(),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

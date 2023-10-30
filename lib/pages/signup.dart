import 'package:flutter/material.dart';
import 'package:trevalin_app/components/signup_form_widget.dart';
import 'package:trevalin_app/components/src/common/footer_widget.dart';
import 'package:trevalin_app/components/src/common/form_widget.dart';
import 'package:trevalin_app/utils/style.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: medium, top: 50, right: medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: 'assets/images/signup.png',
                    title: 'Get On Board,',
                    subtitle: 'Create your profile to start your Journey',
                    size: size),
                const SignupFormWidget(),
                const FooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


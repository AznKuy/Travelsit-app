import 'package:flutter/material.dart';
import 'package:trevalin_app/components/login_form_widget.dart';
import 'package:trevalin_app/components/login_header.dart';
import 'package:trevalin_app/utils/style.dart';

import '../components/login_footer_widget.dart';
// import '../components/footerLoginWidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(medium),
          // child: FooterLoginWidget(size: size),
          child: Column(
            children: [
              LoginHeader(size: size),
              const LoginForm(),
              const LoginFooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';

import '../utils/style.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage('assets/images/login.png'),
          height: size.height * 0.2,
        ),
    Text('Wellcome Back,',style: heading2,),
    Text('Make it work, make it right, make it fast',style: p1),
    SizedBox(height: small),
      ],
    );
  }
}

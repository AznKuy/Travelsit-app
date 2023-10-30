import 'package:flutter/material.dart';
import '../../../utils/style.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    required this.image,
    required this.title,
    required this.subtitle,
    super.key,
    required this.size,
  });

  final String image,title,subtitle;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image:  AssetImage(image),
          height: size.height * 0.2,
        ),
    Text(title,style: heading2,),
    Text(subtitle,style: p1),
    SizedBox(height: small),
      ],
    );
  }
}

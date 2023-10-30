import 'package:flutter/material.dart';
import 'package:trevalin_app/utils/style.dart';

class CardTop extends StatelessWidget {
  final String image;
  final String name;
  final String location;

  const CardTop(
      {required this.image,
      required this.name,
      required this.location,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(right: 36),
      height: 75,
      width: 156,
      child: Row(
        children: [
          // const SizedBox(width: 6),
          Container(
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
            height: 69,
            width: 69,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: heading4),
              Text(
                location,
                style: p3,
              )
            ],
          )
        ],
      ),
    );
  }
}

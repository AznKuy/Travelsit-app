import 'package:flutter/material.dart';
import 'package:trevalin_app/utils/style.dart';

class CardRecommended extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String location;

  const CardRecommended(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      margin: EdgeInsets.only(right: small),
      height: 250,
      width: 200,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(0, 0, 0, 0.75),
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: small, bottom: medium),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: accentlight,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 68,
                      height: 36,
                      child: Center(
                        child: Text(
                        '\$$price',
                          style: pPrice,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: p1Bold,
                  ),
                  Text(
                    location,
                    style: pLocation,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trevalin_app/components/rec_card.dart';
import 'package:trevalin_app/models/destination.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination('assets/images/japan.jpg', 'Pagar Alam', '120',
          'Lahan, sumsel'),
      Destination('assets/images/gapura1.jpg', 'Capura Maro', '100',
          'Tokyo Street, japan'),
      Destination(
          'assets/images/telaga.jpg', 'Telaga', '80', 'Jawa Barat, Bandung'),
    ];

    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: destinations.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var dest = destinations[index];

          return CardRecommended(
              image: dest.image,
              name: dest.name,
              price: dest.price,
              location: dest.location);
        },
      ),
    );
  }
}

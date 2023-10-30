import 'package:flutter/material.dart';
import 'package:trevalin_app/components/card_top.dart';
import 'package:trevalin_app/models/destination.dart';

class TopDestination extends StatelessWidget {
  const TopDestination({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination('assets/images/telaga.jpg', 'Telaga', '120',
          'Bandung'),
      Destination('assets/images/sungai.jpg', 'Capura', '100',
          'Kalimantan'),
      Destination(
          'assets/images/japan.jpg', 'Osaka', '80', 'Japan'),
    ];

    return SizedBox(
      height: 75,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          var dest = destinations[index];
          return  CardTop(
              image: dest.image,
              name: dest.name,
              location: dest.location);
        },
      ),
    );
  }
}

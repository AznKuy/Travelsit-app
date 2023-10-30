import 'package:flutter/material.dart';
import 'package:trevalin_app/pages/profile_page.dart';
import 'package:trevalin_app/utils/style.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: text,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/profil.png'),
                  ),
                ),
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(
              width: small,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wellcome',
                  style: p1,
                ),
                Text(
                  'Macan Putih',
                  style: heading3,
                ),
              ],
            )
          ],
        ),
        Icon(
          Icons.notifications,
          color: icon,
          size: 28,
        )
      ],
    );
  }
}

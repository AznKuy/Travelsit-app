import 'package:flutter/material.dart';
import 'package:trevalin_app/utils/style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title:  Text(
          "Profile",
          style:
              heading1,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:  const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 23,
          ),
          color: text,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(small),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage('assets/images/profil.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Macan Putih",
                style: heading3,
              ),
              Text(
                "macanputih@gmail.com",
                style: p1,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: Text(
                    "Edit Profile",
                    style: pPrice,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                title: "Setting",
                icon: Icons.settings_rounded,
                textColor: icon,
                endIcon: true,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Billing Details",
                icon: Icons.account_balance_wallet_rounded,
                textColor: icon,
                endIcon: true,
                onPress: () {},
              ),

              ProfileMenuWidget(
                title: "User Management",
                icon: Icons.supervised_user_circle_sharp,
                textColor: icon,
                endIcon: true,
                onPress: () {},
              ),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                title: "Information",
                icon: Icons.info_sharp,
                textColor: icon,
                endIcon: true,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Logout",
                icon: Icons.logout_sharp,
                textColor: Colors.red,
                endIcon: true,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    required this.endIcon,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      onTap: onPress,
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.2)),
        child: Icon(
          icon,
          color: const Color(0xFF00BFA6),
        ),
      ),
      title: Text(
        title,
        style: tSetting,
      ),
      trailing: endIcon
          ? Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.2)),
              child: Icon(
                Icons.arrow_forward_outlined,
                size: 18,
                color: text
              ),
            )
          : null,
    );
  }
}

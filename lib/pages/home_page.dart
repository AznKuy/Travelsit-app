import 'package:flutter/material.dart';
import 'package:trevalin_app/components/label_section.dart';
import 'package:trevalin_app/components/recommded.dart';
import 'package:trevalin_app/components/search.dart';
import 'package:trevalin_app/components/top.dart';
import 'package:trevalin_app/utils/style.dart';

import '../components/heading.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  String _currentMenu = 'Home';

  void _changeSelectedNavBar(int index) {
        setState(() {
          _currentIndex = index;
    
          if (index == 0) {
            _currentMenu = 'Home';
          }else if(index == 1){
            _currentMenu = 'Order';
          }else if(index == 2){
            _currentMenu = 'Inbox';
          }else if(index == 3){
            _currentMenu = 'ProfilePage()';
          }
        });
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: medium, top: 50, right: medium),
            child: Column(
              children: [
                const HeadingSection(),
                SizedBox(
                  height: medium,
                ),
                const SearchSection(),
                SizedBox(
                  height: medium,
                ),
                LabelSection(
                  text: 'Recomended',
                  style: heading1,
                ),
                SizedBox(height: medium),
                const Recommended(),
                SizedBox(height: medium),
                LabelSection(text: 'Top Destination', style: heading2),
                SizedBox(height: medium),
                const TopDestination(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 94,
        child: BottomNavigationBar(
          
          selectedItemColor: primaryColor,
          unselectedItemColor: icon,
          elevation: 0,
          backgroundColor: white,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outlined), label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: 'Account'),
          ],

          currentIndex: _currentIndex,
          onTap: _changeSelectedNavBar,

          
        ),
      ),
    );
  }
}

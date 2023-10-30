import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trevalin_app/pages/onboarding.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

int introduction = 0;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
  );
  await initIntroduction();
  runApp(const MyApp());
}

Future initIntroduction() async {
  final prefs = await SharedPreferences.getInstance();

  int? intro = prefs.getInt('introduction');
  print('intro : $intro');

  if (intro != null && intro == 1) {
    return introduction = 1;
  }
  prefs.setInt('introduction', 1);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
      // introduction == 0 ? OnBoardingPage() : const HomePage(),
    );
  }
}

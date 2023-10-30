import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:introduction_screen/introduction_screen.dart';
import 'package:trevalin_app/pages/login_page.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(fontSize: 19),
        bodyPadding: EdgeInsets.all(16));

    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: [
            PageViewModel(
              title: "Mulai Perjalanan dari Genggaman",
              body: "Memesan kendaraan tanpa perlu keluar rumah",
              image: Image.asset(
                'assets/images/well1.png',
                width: 350,
              ),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Driver Terverifikasi",
              body:
                  "Kami telah melakukan seleksi dan menyediakan driver terbaik untuk menemani perjalanan anda.",
              image: Image.asset(
                'assets/images/well2.png',
                width: 350,
              ),
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: "Diskon Brutal",
              body:
                  "Pulang kampung tidak perlu takut bikin dompet bolong, kami telah menyediakan banyak diskon untuk anda.",
              image: Image.asset(
                'assets/images/well3.png',
                width: 350,
              ),
              decoration: pageDecoration,
              // bodyWidget: const SizedBox(height: 10,),
              footer: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(80, 60),
                    backgroundColor: const Color(0xFF00BFA6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (builder) {
                          return const LoginPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ],
          onDone: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (builder) {
                  return const LoginPage();
                },
              ),
            );
          },
          showSkipButton: true,
          showNextButton: true,
          showDoneButton: true,
          showBackButton: false,
          dotsFlex: 3,
          skip: const Text(
            'Skip',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
          ),
          next: const Icon(Icons.arrow_forward),
          done: const Text(
            'Done',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          dotsDecorator: DotsDecorator(
              size: const Size(10, 10),
              color: Colors.grey,
              activeColor: const Color(0xFF00BFA6),
              activeSize: const Size(22, 10),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              )),
        ),
      ),
    );
  }
}

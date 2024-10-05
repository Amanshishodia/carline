import 'package:carline/presentation/pages/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after a delay
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                OnboardingPage1()), // Replace with your next screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/icons/logo.png',
                height: 50,
                width: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Carline',
                style: GoogleFonts.urbanist(
                  fontSize: 44, // Customize the font size
                  fontWeight: FontWeight.bold, // Customize the font weight
                  // You can also add more style properties if needed
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

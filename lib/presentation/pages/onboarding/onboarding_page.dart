import 'package:carline/presentation/pages/onboarding/get_started_page.dart';
import 'package:carline/presentation/pages/onboarding/pageview/page1.dart';
import 'package:carline/presentation/pages/onboarding/pageview/page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage1 extends StatefulWidget {
  const OnboardingPage1({super.key});

  @override
  State<OnboardingPage1> createState() => _OnboardingPage1State();
}

class _OnboardingPage1State extends State<OnboardingPage1> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Color> _appBarColors = [
    Color(0x4F78E0), // First color
    Color(0xFF0062FF), // Second color
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page; // Update the current page index
              });
            },
            children: const [
              Page1(),
              Page2(),
            ],
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 2, // Number of pages
                effect: WormEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Colors.white,
                  dotWidth: 10,
                  dotHeight: 10,
                  spacing: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

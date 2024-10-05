import 'package:carline/presentation/pages/onboarding/get_started_page.dart';
import 'package:carline/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return GetStartedPage();
                          }),
                        );
                      },
                      child: Text(
                        'Skip',
                        style: GoogleFonts.urbanist(color: Colors.white),
                      ))),
              SizedBox(
                height: 30,
              ),
              Text('Find the best car Without headaches ',
                  style: GoogleFonts.urbanist(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Text('You Choose your car online . We Inspect it and deliver it',
                  style: GoogleFonts.urbanist(
                      fontSize: 17.5,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 50,
              ),
              Image.network(
                  'https://fastpng.com/images/high/lightning-mcqueen-png-03thr2vtf9eovm7a.webp'),
              const SizedBox(
                height: 110,
              ),
              Button(
                  name: 'Get Started',
                  dothis: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const GetStartedPage();
                    }));
                  },
                  color: const Color.fromARGB(255, 61, 31, 255),
                  textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}

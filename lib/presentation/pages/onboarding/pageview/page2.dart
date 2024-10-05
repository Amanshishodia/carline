import 'package:carline/presentation/pages/onboarding/get_started_page.dart';
import 'package:carline/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
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
           SizedBox(height: 30,),
            Text(
              'Choose car right for you',
              style: GoogleFonts.urbanist(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Answer a few quick question to find the right car for you',
                style: GoogleFonts.urbanist(
                    color: Colors.grey,
                    fontSize: 17.5,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset('asset/images/audi.png'),
            SizedBox(
              height: 73,
            ),
            Button(
                name: 'Get Started',
                dothis: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const GetStartedPage();
                  }));
                },
                color: Colors.white,
                textColor: Color(0xFF0062FF))
          ],
        ),
      ),
    );
  }
}

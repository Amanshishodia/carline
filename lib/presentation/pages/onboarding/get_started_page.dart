import 'package:carline/presentation/pages/auth/login_screen.dart';
import 'package:carline/presentation/widgets/button.dart';
import 'package:carline/presentation/widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Image.asset(
                  'asset/icons/logo.png',
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Text(
                  'Carline',
                  style: GoogleFonts.urbanist(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20), // Decreased the height
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              'Let\'s get started',
              style: GoogleFonts.urbanist(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              'Sign up or login to see what \nhappening near you',
              style: GoogleFonts.urbanist(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 10), // Decreased the height
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top:
                      -100, // Adjusted the positioning to bring the image closer to the buttons
                  left: 0,
                  child: Image.asset(
                    'asset/images/audi.png',
                    width: 400,
                    height: 500, // Adjusted height
                  ),
                ),
              ],
            ),
          ),

          Button(
            name: 'Continue with Email',
            dothis: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoginScreen();
              }));
            },
            color: const Color(0xFF0062FF),
            textColor: Colors.white,
          ),
          CustomIconButton(textcolor: Colors.white, backGroundColor:Theme.of(context).colorScheme.primary , dothis: (){}, image: Image.asset('asset/icons/google.png',height: 30,width: 30,), name: '   Continue with google'),
                 CustomIconButton(textcolor: Colors.white, backGroundColor:Theme.of(context).colorScheme.primary, dothis: (){}, image: Image.asset('asset/icons/apple.png',height: 30,width: 30,), name: '   Continue with apple'),
          const SizedBox(height: 20),
          // Adjusted space below the buttons if needed
        ],
      ),
    );
  }
}

import 'package:carline/presentation/pages/home/pick_interest.dart';
import 'package:carline/presentation/widgets/button.dart';
import 'package:carline/presentation/widgets/icon_button.dart';
import 'package:carline/presentation/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.cancel_sharp,
              size: 35,
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sign Up',
                    style: GoogleFonts.urbanist(
                        fontSize: 32, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                TextInput(hint: 'FullName', icon: Icon(Icons.person)),
                SizedBox(
                  height: 20,
                ),
                TextInput(hint: 'Email', icon: Icon(Icons.email)),
                SizedBox(
                  height: 20,
                ),
                TextInput(
                  hint: 'Password',
                  icon: Icon(Icons.lock),
                  obscureText: true,
                  lastIcon: Icon(Icons.password),
                ),
                SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'By Signing up .you agree to our  '),
                      TextSpan(
                        text: 'Terms of Service ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      TextSpan(text: 'and '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Button(
                    name: 'Sign In',
                    dothis: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PickInterest();
                      }));
                    },
                    color: Theme.of(context).colorScheme.primary,
                    textColor: Colors.white),
                    
               
                CustomIconButton(textcolor: Theme.of(context).colorScheme.primary, backGroundColor:Colors.white , dothis: (){}, image: Image.asset('asset/icons/google.png',height: 30,width: 30,), name: 'Continue with google'),
                 CustomIconButton(textcolor: Theme.of(context).colorScheme.primary, backGroundColor: Colors.white, dothis: (){}, image: Image.asset('asset/icons/apple.png',height: 30,width: 30,), name: 'Continue with apple'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an Account ?',
                      style: GoogleFonts.urbanist(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.urbanist(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUpScreen();
                        }));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

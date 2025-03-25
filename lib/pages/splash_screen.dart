import 'package:fliq/pages/phone_number_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
              'https://s3-alpha-sig.figma.com/img/808f/1e2e/679edf7a7dff2065130238978ad11f71?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=UQ1auFiqHrJ-hePkj2n1U65ulghU3fTz1mu6erWIzm34poW1B3cvMbj~ODXoD7lji86p7mVO~577L9alcdkPhRkQkoqJdTvW3RwSTnbnKa1bz1QWhPRpuCsYvWH4W0bMpMfWvCuYHwrEHtLjxiIV6nD65Q5qAETY3Lvz8rVUKu6aT2LatCtlx0JGqNh8D7ti9~fUtl8pJXP~wv1lxtBpeEKBMt0XqOHqyYi75YvjLHIuwnps2NTtQ9LKtr~F73Sju20Fre7wLzWa3TBH1VUOCJFPpxUkz6ip76-VEdERRq8wm2HZ0XuHngsKYW0tSWt4LCnsjxEo2-QIwfCW9mzU-A__',
            fit: BoxFit.fitHeight,
            height: MediaQuery.of(context).size.height,
            errorBuilder: (context, error, stackTrace) {
              return const Center(child: Text('Failed to load image'));
            },
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/6),
                  child: const Text(
                    'Connect. Meet. Love.\n With Fliq Dating',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhoneNumberScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE6446E),
                          minimumSize: const Size(double.infinity, 56), // width: full width, height: 50
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone, color: Colors.white,),
                            SizedBox(width: 10,),
                            Text('Sign in with phone number', style: TextStyle(color: Colors.white),),
                          ],
                        ),
                    ),
                    const SizedBox(height: 14,),
                    const Text(
                      'By signing up, you agree to our Terms. See how we use your data in our Privacy Policy.',
                      style: TextStyle(color: Colors.white,),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

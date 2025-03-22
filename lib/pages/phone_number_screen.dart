import 'package:fliq/data/datasource/data_source.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';

class PhoneNumberScreen extends StatelessWidget {
  PhoneNumberScreen({super.key});

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Enter your phone \nnumber',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                        hintText: 'Phone number with country code',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: const Text(
                    'Fliq will send you a text with a verification code.',
                    style: TextStyle(color:Color(0xFF583E45),),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: ()async {

                  await DataSource().sendOTP(mobileNumber: phoneController.text);

                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OTPScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE6446E),
                  minimumSize: const Size(double.infinity, 56), // width: full width, height: 50
                ),
                child: const Text('Next', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

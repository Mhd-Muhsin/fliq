import 'package:fliq/pages/messages_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({super.key});

  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Enter your verification \ncode',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 32,),
                  TextField(
                    controller: otpController,
                    decoration: InputDecoration(
                        hintText: 'OTP',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    maxLength: 6,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'Didn’t get anything? No worries, let’s try again. Resent',
                    style: TextStyle(color:Color(0xFF583E45),),
                    textAlign: TextAlign.left,
                  ),
                  TextButton(onPressed: (){
                    //todo
                  }, child: const Text('Resend', style: TextStyle(color:Colors.blue), textAlign: TextAlign.start,),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessagesListPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE6446E),
                    minimumSize: const Size(double.infinity, 56), // width: full width, height: 50
                  ),
                  child: const Text('Verify', style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

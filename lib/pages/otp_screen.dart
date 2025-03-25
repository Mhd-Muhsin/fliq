import 'package:fliq/data/datasource/data_source.dart';
import 'package:fliq/pages/messages_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/cache_manager.dart';
import '../main.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({super.key, required this.mobileNumber});

  final String mobileNumber;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {

  bool isLoading = false;

  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();
  TextEditingController otpController5 = TextEditingController();
  TextEditingController otpController6 = TextEditingController();

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customOtpField(textController: otpController1),
                      customOtpField(textController: otpController2),
                      customOtpField(textController: otpController3),
                      customOtpField(textController: otpController4),
                      customOtpField(textController: otpController5),
                      customOtpField(textController: otpController6),

                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'Didn’t get anything? No worries, let’s try again. Resent',
                    style: TextStyle(color:Color(0xFF583E45),),
                    textAlign: TextAlign.left,
                  ),
                  TextButton(onPressed: () async{
                      resendOTP();
                    },
                    child: const Text('Resend', style: TextStyle(color:Colors.blue), textAlign: TextAlign.start,),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: isLoading ? const CircularProgressIndicator() : ElevatedButton(
                  onPressed: (){
                    verifyOTP();
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

  verifyOTP() async{
    String otp = otpController1.text+otpController2.text+otpController3.text+otpController4.text+otpController5.text+otpController6.text;
    if(otpController1.text.isEmpty || otpController2.text.isEmpty || otpController3.text.isEmpty || otpController4.text.isEmpty || otpController5.text.isEmpty || otpController6.text.isEmpty){
      scaffoldMessengerKey.currentState?.showSnackBar(
        const SnackBar(content: Text('Please enter the 6 digit OTP')),
      );
    } else {

      setState(() {
        isLoading = true;
      });

      bool APISuccess = await DataSource.verifyOTP(otp: int.tryParse(otp) ?? 0, mobileNumber: widget.mobileNumber);

      setState(() {
        isLoading = false;
      });

      if (APISuccess) {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessagesListPage()));
      }
    }
  }

  resendOTP() async{
    clearFields();
    await DataSource.sendOTP(mobileNumber: widget.mobileNumber);
  }

  clearFields(){
    otpController1.clear();
    otpController2.clear();
    otpController3.clear();
    otpController4.clear();
    otpController5.clear();
    otpController6.clear();
  }

  customOtpField({TextEditingController? textController}){
    return SizedBox(
        width:46,
        height: 46,
        child: TextFormField(
          onChanged: (value){
            if(value.length == 1){
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
          },
            controller: textController,
            showCursor: false,
            style: TextStyle(fontSize: 18),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
          decoration: InputDecoration(
              hintText: '0',
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
              )
          ),          )
    );
  }
}

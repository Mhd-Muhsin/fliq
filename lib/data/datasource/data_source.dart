import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../main.dart';

class DataSource{

  final client = http.Client();

  Future sendOTP({required String mobileNumber}) async {

    try {

      var headers = {
        'Content-Type': 'application/json',
        'Cookie': 'AWSALB=5pYgPao/FgGL4ssC4zoh4r8uUMjr/cFVhvqFBtxgoWURneWMnQ6z65ySkpkBy26oRhZh9HZER9OAE4pfW5W5PKdY67Y7cGTM2kg2rOEkJWKjY9dTWV3BO5zPBO5y; AWSALBCORS=5pYgPao/FgGL4ssC4zoh4r8uUMjr/cFVhvqFBtxgoWURneWMnQ6z65ySkpkBy26oRhZh9HZER9OAE4pfW5W5PKdY67Y7cGTM2kg2rOEkJWKjY9dTWV3BO5zPBO5y'
      };
      var request = http.Request('POST', Uri.parse('https://test.myfliqapp.com/api/v1/auth/registration-otp-codes/actions/phone/send-otp'));
      request.body = json.encode({
        "data": {
          "type": "registration_otp_codes",
          "attributes": {
            "phone": "$mobileNumber"
          }
        }
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        scaffoldMessengerKey.currentState?.showSnackBar(
          const SnackBar(content: Text('OTP has been sent to your registered phone number.')),
        );      }
      else {
        scaffoldMessengerKey.currentState?.showSnackBar(
          const SnackBar(content: Text('Something went wrong')),
        );
      }
    } catch (e) {
      scaffoldMessengerKey.currentState?.showSnackBar(
        const SnackBar(content: Text('Something went wrong')),
      );
    }
  }

  Future verifyOTP({required String otp}) async {

    var headers = {
      'Content-Type': 'application/json',
      'Cookie': 'AWSALB=9s/pTkZhoI85x0G2CTBvF7LhJE85VTwmLJp+Cq9TD1vvjDQVC6oglcBAQinbpnNLNFtT1ljEab1EiGoqIVmQzVvW4lI+KsDSVwmdDEpNfnD3k3STEGaAohczFGVy; AWSALBCORS=9s/pTkZhoI85x0G2CTBvF7LhJE85VTwmLJp+Cq9TD1vvjDQVC6oglcBAQinbpnNLNFtT1ljEab1EiGoqIVmQzVvW4lI+KsDSVwmdDEpNfnD3k3STEGaAohczFGVy'
    };
    var request = http.Request('POST', Uri.parse('https://test.myfliqapp.com/api/v1/auth/registration-otp-codes/actions/phone/verify-otp'));
    request.body = json.encode({
      "data": {
        "type": "registration_otp_codes",
        "attributes": {
          "phone": "+919090909090",
          "otp": 111111,
          "device_meta": {
            "type": "web",
            "name": "HP Pavilion 14-EP0068TU",
            "os": "Linux x86_64",
            "browser": "Mozilla Firefox Snap for Ubuntu (64-bit)",
            "browser_version": "112.0.2",
            "user_agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/112.0",
            "screen_resolution": "1600x900",
            "language": "en-GB"
          }
        }
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }

  }




}
import 'dart:convert';

import 'package:fliq/core/cache_manager.dart';
import 'package:fliq/data/model/chat_list_response.dart';
import 'package:fliq/data/model/verify_otp_response_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../main.dart';
import '../model/user_chat_response.dart';

class DataSource{

  final client = http.Client();

  static Future<bool> sendOTP({required String mobileNumber}) async {

    try {

      var headers = {
        'Content-Type': 'application/json',
      };
      var request = http.Request('POST', Uri.parse('https://test.myfliqapp.com/api/v1/auth/registration-otp-codes/actions/phone/send-otp'));
      request.body = json.encode({
        "data": {
          "type": "registration_otp_codes",
          "attributes": {
            "phone": mobileNumber
          }
        }
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {

        final Map<String, dynamic> responseBody = jsonDecode(await response.stream.bytesToString());

        scaffoldMessengerKey.currentState?.showSnackBar(
          const SnackBar(content: Text('OTP has been sent to your registered phone number.')),
        );
        return true;
      }
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
    return false;
  }

  static Future<bool> verifyOTP({required int otp, required String mobileNumber}) async {

    try {
      var headers = {
            'Content-Type': 'application/json',
          };
      var request = http.Request('POST', Uri.parse('https://test.myfliqapp.com/api/v1/auth/registration-otp-codes/actions/phone/verify-otp'));
      request.body = json.encode({
            "data": {
              "type": "registration_otp_codes",
              "attributes": {
                "phone": mobileNumber,
                "otp": otp,
              }
            }
          });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {

        final Map<String, dynamic> responseBody = jsonDecode(await response.stream.bytesToString());

        VerifyOtpResponse verifyOtpResponse = VerifyOtpResponse.fromJson(responseBody);
        String token = verifyOtpResponse.data?.attributes?.authStatus?.accessToken ?? '';
        String loggedUserId = verifyOtpResponse.data?.id ?? '';
        CacheManager().saveToken(token);
        CacheManager().saveLoggedUserId(loggedUserId);// receiverId

        scaffoldMessengerKey.currentState?.showSnackBar(
          const SnackBar(content: Text('OTP verified successfully')),
        );
        return true;
      }
      else {
        scaffoldMessengerKey.currentState?.showSnackBar(
          const SnackBar(content: Text( "Invalid or expired otp.")),
        );
      }
    } catch (e) {
      scaffoldMessengerKey.currentState?.showSnackBar(
        const SnackBar(content: Text('Something went wrong')),
      );
    }
    return false;
  }

  static Future<ChatListResponse?> getChatList() async {

    try {
      String? token = await CacheManager().getToken();
      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };
      final url = Uri.parse('https://test.myfliqapp.com/api/v1/chat/chat-messages/queries/contact-users');

      final response = await http.get(url, headers: headers);

      if (response.statusCode == 200) {

        final Map<String, dynamic> responseBody = jsonDecode(response.body);

        ChatListResponse chatListResponse = ChatListResponse.fromJson(responseBody);

        return chatListResponse;

      }
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
    return null;
  }

  static Future<UserChatResponse?> getUserChat(String senderID) async {

    try {

      CacheManager cacheManager = CacheManager();
      String? token = await cacheManager.getToken();
      String? receiverId = await cacheManager.getLoggedUserId();

      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };
      final url = Uri.parse('https://test.myfliqapp.com/api/v1/chat/chat-messages/queries/chat-between-users/$senderID/$receiverId');

      final response = await http.get(url, headers: headers);

      if (response.statusCode == 200) {

        final Map<String, dynamic> responseBody = jsonDecode(response.body);

        UserChatResponse userChatResponse = UserChatResponse.fromJson(responseBody);

        return userChatResponse;

      }
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
    return null;
  }


}
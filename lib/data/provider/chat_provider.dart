import 'package:fliq/data/datasource/data_source.dart';
import 'package:fliq/data/model/chat_list_response.dart';
import 'package:flutter/material.dart';

import '../model/user_chat_response.dart';

class ChatProvider extends ChangeNotifier{

  ChatListResponse? chatListResponse;
  UserChatResponse? userChatResponse;
  bool isLoading = true;
  bool chatMessageLoading = true;

  Future<void> getChatList() async {
    chatListResponse = await DataSource.getChatList();
    isLoading = false;
    notifyListeners();
  }

  Future<void> getUserChat(String senderID) async {
    userChatResponse = await DataSource.getUserChat(senderID);
    chatMessageLoading = false;
    notifyListeners();
  }

}
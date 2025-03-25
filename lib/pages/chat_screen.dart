import 'package:fliq/data/provider/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({required this.senderID, required this.name});

  final String senderID;
  final String name;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  void initState() {
    Provider.of<ChatProvider>(context, listen: false).getUserChat(widget.senderID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatProvider>(
      builder: (BuildContext context, chatProvider, child) {
        return chatProvider.chatMessageLoading ? const Scaffold(body: Center(child: CircularProgressIndicator())) : Scaffold(
          appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name, style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600
            )),
                const Text(
                  'Online',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index){
                    return Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(top: 6),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text(
                              chatProvider.userChatResponse?.data?[index].attributes?.message ?? 'No message',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(getMessageReceivedTime(chatProvider.userChatResponse?.data?[index].attributes?.deliveredAt), style: const TextStyle(fontSize: 9), textAlign: TextAlign.right,),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: chatProvider.userChatResponse?.data?.length ?? 0,
                  padding: const EdgeInsets.all(8.0),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.send, color: Colors.red,),
                          onPressed: () {
                            // Implement send functionality
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }

  String getMessageReceivedTime(String? deliveredAt){
    if (deliveredAt != null) {
      DateTime dateTime = DateTime.parse(deliveredAt);
      return DateFormat('h:mm a').format(dateTime);
    }
    return '';
  }
}
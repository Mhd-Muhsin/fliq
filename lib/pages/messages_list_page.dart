import 'package:fliq/data/datasource/data_source.dart';
import 'package:fliq/data/model/chat_list_response.dart';
import 'package:fliq/data/provider/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'chat_screen.dart';
import 'package:intl/intl.dart';

class MessagesListPage extends StatefulWidget {
  @override
  State<MessagesListPage> createState() => _MessagesListPageState();
}

class _MessagesListPageState extends State<MessagesListPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<ChatProvider>(context, listen: false).getChatList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Messages',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Consumer<ChatProvider>(
        builder: (BuildContext context, chatProvider, child) {
          return chatProvider.isLoading
              ? const Center(child: CircularProgressIndicator())
              : (chatProvider.chatListResponse != null &&
                      chatProvider.chatListResponse!.data.isNotEmpty)
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              suffixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(98.0),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text('Chat',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                          const SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      child: ClipOval(
                                        child: Image.network(
                                          chatProvider
                                                  .chatListResponse
                                                  ?.data?[index]
                                                  .attributes
                                                  ?.profilePhotoUrl ??
                                              '',
                                          fit: BoxFit.cover,
                                          height: 40,
                                          width: 40,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return const Icon(Icons
                                                .image_not_supported_outlined);
                                          },
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                        chatProvider
                                                .chatListResponse
                                                ?.data?[index]
                                                .attributes
                                                ?.name ??
                                            'No Name',
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)),
                                    trailing: Text(getMessageReceivedTime(
                                        chatProvider
                                            .chatListResponse
                                            ?.data?[index]
                                            .attributes
                                            ?.messageReceivedFromPartnerAt)),
                                  ),
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => ChatScreen(
                                                  senderID: chatProvider
                                                          .chatListResponse
                                                          ?.data?[index]
                                                          .id ??
                                                      '',
                                                  name: chatProvider
                                                          .chatListResponse
                                                          ?.data?[index]
                                                          .attributes
                                                          ?.name ??
                                                      'No Name',
                                                )));
                                  },
                                );
                              },
                              itemCount:
                                  chatProvider.chatListResponse?.data?.length ??
                                      0,
                            ),
                          ),
                        ],
                      ),
                    )
                  : const Center(
                      child: Text('No data to display'),
                    );
        },
      ),
    );
  }

  String getMessageReceivedTime(DateTime? dateTimeString) {
    if (dateTimeString != null) {
      return DateFormat('h:mm a').format(dateTimeString);
    }
    return '';
  }
}

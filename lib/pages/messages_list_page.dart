import 'package:fliq/data/datasource/data_source.dart';
import 'package:fliq/data/model/chat_list_response.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class MessagesListPage extends StatefulWidget {
  @override
  State<MessagesListPage> createState() => _MessagesListPageState();
}

class _MessagesListPageState extends State<MessagesListPage> {

  ChatListResponse? chatListResponse;

  @override
  void initState() {
    super.initState();
    getChatList();
  }

  getChatList() async{
    chatListResponse = await DataSource.getChatList();
  }

  @override
  Widget build(BuildContext context) {
    chatListResponse;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700
          ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(98.0),
                ),
              ),
            ),
            const SizedBox(height: 13,),
            const Text('Chat', textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                )),
            const SizedBox(height: 8,),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index){
                return GestureDetector(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('C'),
                    ),
                    title: Text(chatListResponse?.data[index].attributes?.name ?? 'No Name', style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    )),
                    trailing: Text('10:00 AM'),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatScreen()));
                  },
                );
              },
                itemCount: chatListResponse?.data.length ?? 0,
              ),
              // child: ListView(
              //   children: [
              //     GestureDetector(
              //       child: ListTile(
              //         leading: CircleAvatar(
              //           child: Text('C'),
              //         ),
              //         title: Text(chatListResponse.data.a, style: TextStyle(
              //             color: Colors.black,
              //             fontSize: 18,
              //             fontWeight: FontWeight.w600
              //         )),
              //         trailing: Text('10:00 AM'),
              //       ),
              //       onTap: (){
              //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatScreen()));
              //       },
              //     ),
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
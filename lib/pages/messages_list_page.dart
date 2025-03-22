import 'package:flutter/material.dart';
import 'chat_screen.dart';

class MessagesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              child: ListView(
                children: [
                  GestureDetector(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text('C'),
                      ),
                      title: Text('Christina', style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      )),
                      trailing: Text('10:00 AM'),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatScreen()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
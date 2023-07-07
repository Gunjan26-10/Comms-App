import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    User loggedInUser;
    final _auth = FirebaseAuth.instance;
    final _firestore = FirebaseFirestore.instance;
    String messageText;
    
    
    void getCurrentUser() {
      final user = _auth.currentUser;
      if(user != null) {
        loggedInUser = user;
      }
    }
    
    @override
    void initState() {
      super.initState();
      getCurrentUser();
    }
    
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: const Icon(Icons.close),)
        ],
        title: const Text('Chat UI'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
        child: Column(
          children: [
            StreamBuilder<QuerySnapshot>(
              stream: _firestore.collection('messages').snapshots(),
              builder: (context, snapshot) {
                if(!snapshot.hasData) {
                  return const CircularProgressIndicator(
                    color: Colors.lightGreen,
                  );
                }
                List<MContainer> mContainer = 

              },
            )
          ],
        ),
      ),
    );

  }
}

class MContainer extends StatelessWidget {
  MContainer(this.text, this.sender);
  final String text;
  final String sender;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.0),child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(sender),
        Material(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          elevation: 5.0,
          color: Colors.lightGreen,
          child: Text(text, style: const TextStyle(
            color: Colors.white,
          ),),
        )
      ],
    ),);
  }
}

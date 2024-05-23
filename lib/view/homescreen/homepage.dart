import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:geminibot/utils/constants.dart';
import 'package:geminibot/view/homescreen/widgets/dashchat.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  MyDashChat dashChat=MyDashChat();
  ChatUser user = ChatUser(
    id: '1',
    firstName: 'Hadiya',
    lastName: 'Sadiq',
  );

  ChatUser bot=ChatUser(id: '2',firstName: 'Gemini');

  List<ChatMessage> messages = <ChatMessage>[];
  List<ChatUser> typing = <ChatUser>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(bgimage), fit: BoxFit.cover),
        ),
        child: DashChat(
          // typingUsers: typing,
          messageOptions:dashChat.myMessageOptions(),
          messageListOptions: dashChat.myMessageListOptions(),
          inputOptions: dashChat.myInputOptions(),
          currentUser: user,
          onSend: (ChatMessage m) {
            // typing.add(bot);
            setState(() {
              messages.insert(0, m);
            });
          },
          messages: messages,
        ),
      ),
    );
  }
}


import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:geminibot/controller/chatprovider.dart';
import 'package:geminibot/utils/constants.dart';
import 'package:geminibot/view/homescreen/widgets/dashchat.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MyDashChat dashChat = MyDashChat();

  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(bgimage), fit: BoxFit.cover),
        ),
        child: DashChat(
          messageOptions: dashChat.myMessageOptions(),
          messageListOptions: dashChat.myMessageListOptions(),
          inputOptions: dashChat.myInputOptions(),
          currentUser: chatProvider.user,
          onSend: (ChatMessage m) {
            chatProvider.onSend(m);
          },
          messages: chatProvider.messages,
        ),
      ),
    );
  }
}

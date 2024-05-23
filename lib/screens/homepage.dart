import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geminibot/constants/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ChatUser user = ChatUser(
    id: '1',
    firstName: 'Hadiya',
    lastName: 'Sadiq',
  );

  List<ChatMessage> messages = <ChatMessage>[
    ChatMessage(
      text: 'Hey!',
      user: ChatUser(id: '1', firstName: 'Hadiya', lastName: 'Sadiq'),
      createdAt: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(bgimage), fit: BoxFit.cover),
        ),
        child: DashChat(
          
          messageListOptions: const MessageListOptions(
            separatorFrequency: SeparatorFrequency.hours,
          ),
          inputOptions: const InputOptions(
            inputToolbarPadding: sendTextPadding,
            inputToolbarStyle: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            textCapitalization: TextCapitalization.sentences,
            inputDecoration: InputDecoration(
              contentPadding: sendTextPadding,
              hintText: 'Ask Something...',
              filled: true,
              fillColor: white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20),),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20),),
              ),
            )
          ),
          currentUser: user,
          onSend: (ChatMessage m) {
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

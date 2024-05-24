import 'dart:convert';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:geminibot/utils/constants.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:http/http.dart' as http;

class ChatProvider extends ChangeNotifier {
  // final Gemini gemini = Gemini.instance;
  final header = {
    'Content-Type': 'application/json',
  };
  ChatUser user = ChatUser(id: '1');

  ChatUser bot = ChatUser(id: '2', firstName: 'Gemini');

  List<ChatMessage> allMessages = <ChatMessage>[];
  List<ChatUser> typing = <ChatUser>[];
  Future<void> onSend(ChatMessage m) async {
    typing.add(bot);
    allMessages.insert(0, m);
    notifyListeners();
    try {
      final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
    final msg = m.text;
    final content = Content.text(msg);
    final response = await model.generateContent([content]).then((value) {
      print(value.text);
      ChatMessage m1 = ChatMessage(
        text: value.text!,
        user: bot,
        createdAt: DateTime.now(),
      );
      allMessages.insert(0, m1);});
    } catch (e) {
      print('error: $e');
    }
    typing.remove(bot);
    notifyListeners();
  }
}

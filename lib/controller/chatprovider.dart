import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:geminibot/utils/constants.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:http/http.dart' as http;

class ChatProvider extends ChangeNotifier {
  // final Gemini gemini = Gemini.instance;
  ChatUser user = ChatUser(id: '1');

  ChatUser bot = ChatUser(id: '2', firstName: 'Gemini');

  List<ChatMessage> messages = <ChatMessage>[];
  List<ChatUser> typing = <ChatUser>[];
  Future<void> onSend(ChatMessage m) async {
    messages=[m,...messages];
    notifyListeners();

    try {
      final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
      final prompt=m.text;
      final content=[Content.text(prompt)];
      final response= await model.generateContent(content);
      print(response.text);

      // String question = m.text;
      // print(question);
      // gemini.text(question).then((value) => print(value?.content?.parts?.last.text??"hello"));
      // gemini.streamGenerateContent(question).listen((event) {
      //   print(event.output);
      //   ChatMessage? lastMessage = messages.firstOrNull;
      //   if (lastMessage != null && lastMessage.user == bot) {
      //   } else {
      //     String response = event.content?.parts
      //             ?.fold("", (previous, current) => "$previous$current") ??
      //         "";
      //     ChatMessage message = ChatMessage(
      //       user: bot,
      //       createdAt: DateTime.now(),
      //       text: response,
      //     );
      //     messages.insert(0, message);
      //     notifyListeners();
      //   }
      // });
    } catch (e) {
      print(e);
    }
  }
}

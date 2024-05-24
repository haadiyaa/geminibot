import 'package:flutter/material.dart';

const String apiKey = "AIzaSyAPhbpwNBHkM49DPwjapBk0UXKrXnDr1kY";
const String apiUrl = "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=$apiKey";

// curl \
//   -H 'Content-Type: application/json' \
//   -d '{"contents":[{"parts":[{"text":"Explain how AI works"}]}]}' \
//   -X POST 'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=YOUR_API_KEY'
//============bg image======================
const String bgimage = "assets/chatbg1.jpg";

//=================icons=====================
IconData sendMessage=Icons.send;

//=====================colors=================
const Color white=Colors.white;
const Color black=Colors.black;
const Color grey=Color.fromARGB(255, 82, 82, 82);
const Color lightGrey=Colors.grey;
const Color purple=Color.fromARGB(255, 203, 148, 255);
const Color purpleDark=Color.fromARGB(255, 111, 79, 141);

//================padding==============
const EdgeInsetsGeometry sendIconPadding= EdgeInsets.all(10);
const EdgeInsets sendTextPadding= EdgeInsets.symmetric(horizontal: 20,vertical: 15);

//==================size====================

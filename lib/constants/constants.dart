import 'package:flutter/material.dart';

const String apiKey = "AIzaSyCNact63BcHC87y7jIQwmQDzpNQmFBmaUA";
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
const Color purple=Color.fromARGB(255, 203, 148, 255);
const Color purpleDark=Color.fromARGB(255, 111, 79, 141);

//================padding==============
const EdgeInsetsGeometry sendIconPadding= EdgeInsets.all(10);
const EdgeInsets sendTextPadding= EdgeInsets.symmetric(horizontal: 20,vertical: 15);

//==================size====================

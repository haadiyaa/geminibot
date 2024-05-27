import 'package:flutter/material.dart';
import 'package:geminibot/controller/chatprovider.dart';
import 'package:geminibot/controller/networkcheckprovider.dart';
import 'package:geminibot/utils/constants.dart';
import 'package:geminibot/view/homescreen/screen/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChatProvider()),
        ChangeNotifierProvider(create: (context) => NetworkCheckProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: lightGrey,
            centerTitle: true,
            titleTextStyle: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 20),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}

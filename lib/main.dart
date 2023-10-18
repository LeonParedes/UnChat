import 'package:flutter/material.dart';
import 'presentation/chat/chat_screen.dart';
import 'config/theme/theme_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
       selectedColor: 1).theme(),
      home: ChatScreen(),
    );
  }
}
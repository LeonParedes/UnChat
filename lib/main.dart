import 'package:flutter/material.dart';
import 'presentation/screens/chat/chat_screen.dart';
import 'config/theme/theme_config.dart';
import 'package:provider/provider.dart';
import 'presentation/providers/chat_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
      title: 'si o nel',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
       selectedColor: 4).theme(),
      home: ChatScreen(),
      )
    );
  }
}
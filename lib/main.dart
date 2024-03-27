import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 5 ,selectedBrightness: Brightness.light).theme(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Yes No App'),
      //     centerTitle: true,
      //   ),
      //   body:  Center(
      //     child: FilledButton.tonal(onPressed: (){ }, child: const Text('Click me')),
      //   )
      // ),
      home: const ChatScreen(),
    );
  }
}

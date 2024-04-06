import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();

  final List<Message> messageList = [
    Message(text: 'Hola amor!', owner: FromWho.me),
    Message(text: 'Ya regresaste del trabajo?', owner: FromWho.me),
    Message(text: 'Hola mi vida!!!', owner: FromWho.other),
  ];


  Future<void> sendMessage(String text) async {
    if ( text.isEmpty ) return;
    final newMessage = Message(text: text, owner: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
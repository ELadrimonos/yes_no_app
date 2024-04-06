import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

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
  }
}
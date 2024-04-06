import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final List<Message> messages = [
    Message(text: 'Hola amor!', owner: FromWho.me),
    Message(text: 'Hola mi vida!!!', owner: FromWho.other),
  ];


  Future<void> sendMessage(String text) async {
    if ( text.isEmpty ) return;
    final newMessage = Message(text: text, owner: FromWho.me);
    messages.add(newMessage);
    notifyListeners();
  }
}
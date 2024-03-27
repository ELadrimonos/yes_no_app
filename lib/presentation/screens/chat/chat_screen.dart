import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/originals/11/b8/35/11b835a1d9c67e5a3639fd749c28228d.jpg"),

          ),
        ),
        title: const Text('Bebesitaa'),
        centerTitle: false,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ( index % 2 == 0 ) ? const MyMessageBubble() : const HerMessageBubble();
            },
          )),
          const MessageFieldBox(),
        ]),
      ),
    );
  }
}

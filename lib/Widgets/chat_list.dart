import 'package:flutter/material.dart';
import 'package:whatsappui/Widgets/my_message_card.dart';
import 'package:whatsappui/Widgets/send_message_card.dart';
import 'package:whatsappui/info.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            //Minhas mensagens
            return MyMessageCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
          }
          //Mensagens do usuario
          return SendMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        });
  }
}

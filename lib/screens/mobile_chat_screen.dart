// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsappui/Widgets/chat_list.dart';

import 'package:whatsappui/colors.dart';
import 'package:whatsappui/info.dart';

class MobileChatScreen extends StatefulWidget {
  // final int index;
  final String userName;
  MobileChatScreen({
    Key? key,
    // required this.index,
    required this.userName,
  }) : super(key: key);

  @override
  State<MobileChatScreen> createState() => _MobileChatScreenState();
}

class _MobileChatScreenState extends State<MobileChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(widget.userName),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //Chat list
          Expanded(child: ChatList()),
          //Text input
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: searchBarColor,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(
                                Icons.attach_file,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.camera_alt,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        hintText: "Type a message",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 0, style: BorderStyle.none)),
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green.shade600,
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

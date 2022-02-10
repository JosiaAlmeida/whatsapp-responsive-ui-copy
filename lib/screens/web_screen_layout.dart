// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsappui/Widgets/chat_list.dart';
import 'package:whatsappui/Widgets/contacts_list.dart';
import 'package:whatsappui/Widgets/web_profile_bar.dart';
import 'package:whatsappui/Widgets/web_search_bar.dart';
import 'package:whatsappui/colors.dart';
import 'package:whatsappui/screens/web_chat_appbar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  //web profile bar
                  // ignore: prefer_const_constructors
                  WebProfileBar(),
                  //web search bar
                  // ignore: prefer_const_constructors
                  WebSearchBar(),
                  // ignore: prefer_const_constructors
                  ContactsList()
                ],
              ),
            ),
          ),
          //web screen
          Container(
              width: MediaQuery.of(context).size.width * .75,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/backgroundImage.png'),
                      fit: BoxFit.cover)),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                //Chat app bar
                WebChatAppBar(),
                //chat List
                Expanded(child: ChatList()),
                //Message Input Box
                Container(
                  height: size.height * .07,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: dividerColor))),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: "Type a message",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none)),
                              contentPadding: EdgeInsets.only(left: 20)),
                        ),
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                )
              ])),
        ],
      ),
    );
  }
}

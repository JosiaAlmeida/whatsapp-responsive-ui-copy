import 'package:flutter/material.dart';
import 'package:whatsappui/Widgets/contacts_list.dart';
import 'package:whatsappui/Widgets/web_profile_bar.dart';
import 'package:whatsappui/Widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              child: Column(children: [
                //Chat app bar
                //chat List
                //Message Input Box
              ]))
        ],
      ),
    );
  }
}

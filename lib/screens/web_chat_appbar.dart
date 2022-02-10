// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';

import '../info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * .077,
        width: size.width * .75,
        padding: EdgeInsets.all(10),
        color: webAppBarColor,
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')),
                SizedBox(
                  width: size.width * .01,
                ),
                Text(
                  info[0]['name'].toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.grey)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert, color: Colors.grey))
              ],
            )
          ],
        ));
  }
}

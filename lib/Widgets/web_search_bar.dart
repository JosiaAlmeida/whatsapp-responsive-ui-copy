// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .25,
      height: size.height * .07,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: dividerColor))
          // color: dividerColor
          ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.search),
            ),
            hintStyle: TextStyle(fontSize: 14),
            hintText: "Search or start new chat",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(width: 0, style: BorderStyle.none)),
            contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}

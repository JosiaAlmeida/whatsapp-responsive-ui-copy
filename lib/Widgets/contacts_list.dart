import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';

import '../info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: ListTile(
                        title: Text(info[index]['name'].toString(),
                            style: const TextStyle(fontSize: 18)),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                            info[index]['message'].toString(),
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              info[index]['profilePic'].toString()),
                        ),
                        trailing: Text(
                          info[index]['time'].toString(),
                          style:
                              const TextStyle(fontSize: 13, color: Colors.grey),
                        )),
                  ),
                );
              },
              itemCount: info.length,
            ),
          ),
          const Divider(
            color: dividerColor,
            indent: 85,
          )
        ],
      ),
    );
  }
}

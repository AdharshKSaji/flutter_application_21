import 'package:flutter/material.dart';
import 'package:flutter_application_21/view/dummy_db.dart';
import 'package:flutter_application_21/view/homescreen/widget/customcard.dart';


class Chat extends StatefulWidget {
  const Chat ({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) => CustomChat(index: index),
     separatorBuilder: (context, index) =>Divider() ,
      itemCount:DammyDb.userChatlist.length)
    ;
  }
}
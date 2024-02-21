import 'package:flutter/material.dart';
import 'package:flutter_application_21/view/dummy_db.dart';
class CustomChat extends StatelessWidget {
  const CustomChat({super.key,required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Row(
      children: [CircleAvatar(radius: 20),SizedBox(width: 10,)],
    ),Column(children: [
      Text(DammyDb.userChatlist[index]["user_name"]),SizedBox(width: 10,),
    Text(DammyDb.userChatlist[index]["last_message"]),SizedBox(width: 10,)],),
    Spacer(),

    Column(children: [Text(DammyDb.userChatlist[index]["time"]),SizedBox(height: 10,),
    CircleAvatar(radius: 10,child: Text(DammyDb.userChatlist[index]["count"]),backgroundColor: Colors.green,),SizedBox(height: 10,)],)
    ],
   ) )
    ;
  }
}
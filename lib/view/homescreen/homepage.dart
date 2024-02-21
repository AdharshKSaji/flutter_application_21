import 'package:flutter/material.dart';
import 'package:flutter_application_21/view/homescreen/tab/call.dart';
import 'package:flutter_application_21/view/homescreen/tab/chat.dart';
import 'package:flutter_application_21/view/homescreen/tab/update.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(appBar: AppBar(title: Text("Whatsapp",style: TextStyle(color: Colors.white),),
      backgroundColor: Color.fromARGB(255,7,94,84),actions: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox( width: 15,child: Icon(Icons.search_off_outlined,color: Colors.white,)),
        ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox( width: 15,child: Icon(Icons.message_outlined,color: Colors.white,)),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox( width: 15,child: Icon(Icons.more_vert_outlined,color: Colors.white,)),
      )],
      bottom: TabBar( indicatorColor: Colors.white,indicatorWeight: 10,
      labelColor: Colors.white,unselectedLabelColor:Colors.black ,tabs: [Text("chat")
      ,Text("Updates"),
      Text("Calls")]),
      ),body:TabBarView(children: [Chat(),Call(),Updates()],)))
    ;
  }
}
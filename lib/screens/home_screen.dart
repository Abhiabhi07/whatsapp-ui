import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/calls_screen.dart';
import 'package:whatsapp_ui/screens/profile_screen/profile_screen.dart';

import 'chats_screen.dart';
import 'community_screen.dart';
import 'updates_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          title: const Text(
            'Whatsclone',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
          ),
          actionsIconTheme: const IconThemeData(
            size: 30,
            color: Colors.white,
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(Icons.camera_alt_outlined),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ProfileScreen()));
                },
                child: const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/pro.png'),
                ),
              ),
            ),
          ],
          bottom: const TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.only(bottom: 5.0),
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              tabs: [
                Icon(
                  CupertinoIcons.person_3_fill,
                ),
                Text('Chats'),
                Text('Updates'),
                Text('Calls')
              ]),
        ),
        body: TabBarView(children: <Widget>[
          const CommunityScreen(),
          const ChatsScreen(),
          const UpdatesScreen(),
          CallsScreen(),
        ]),
      ),
    );
  }
}

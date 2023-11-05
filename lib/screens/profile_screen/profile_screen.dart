import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/profile_screen/custom_card.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  List<ProfileItem> itemList = [
    ProfileItem(title: 'Starred messages', icon: Icons.star_border),
    ProfileItem(title: 'Linked devices', icon: Icons.devices_other),
    ProfileItem(title: 'Starred messages', icon: Icons.currency_rupee),
    ProfileItem(
        title: 'Account',
        icon: Icons.key_outlined,
        subtitle: 'Security notification, change number'),
    ProfileItem(
        title: 'Avatar',
        icon: Icons.emoji_emotions_outlined,
        subtitle: 'Create, edit, profile photo'),
    ProfileItem(
        title: 'Chats',
        icon: Icons.message_outlined,
        subtitle: 'Theme, wallpaper,chat history'),
    ProfileItem(
        title: 'Notifications',
        icon: Icons.notifications_none,
        subtitle: 'Message, group & call tones'),
    ProfileItem(
        title: 'Storage and data',
        icon: Icons.notifications_none,
        subtitle: 'Network usage, auto-download'),
  ];

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20.0,
        title: const Text(
          'You',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 22),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white70,
            ),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          controller: scrollController,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/pro.png'),
                    ),
                    Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.brown[400],
                          child: Icon(
                            Icons.qr_code,
                            color: Colors.white70,
                            size: 22,
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text('Name', style: TextStyle(fontSize: 24)),
              ),
              Text(
                'Available',
                style: TextStyle(color: Colors.brown[400], fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCards(
                      icon: CupertinoIcons.person_crop_circle, title: 'Profile'),
                  CustomCards(icon: Icons.lock, title: 'Privacy'),
                  CustomCards(icon: Icons.contacts, title: 'Contacts'),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                  controller: scrollController,
                  physics: BouncingScrollPhysics(),
                  itemCount: itemList.length,
                  itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(itemList[index].title),
                    ),
                    leading: Icon(itemList[index].icon),
                    subtitle: itemList[index].subtitle == null ? null : Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(itemList[index].subtitle! ),
                    ),
                  ),
                );
              }),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text('from'),
                    Text('ADF')
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ProfileItem {
  final IconData icon;
  final String title;
  final String? subtitle;

  ProfileItem({required this.title, required this.icon, this.subtitle});
}

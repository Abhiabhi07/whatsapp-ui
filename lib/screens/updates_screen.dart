import 'package:flutter/material.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Icon(Icons.more_vert_rounded)
              ],
            ),
          ),
          SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (ctx, index) {
                    return index == 0
                        ? Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            height: 60,
                            width: 60,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(1),
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage('assets/pro.png',),
                                      ),
                                      Positioned(
                                          bottom: 0.0,
                                          right: 0.0,
                                          child: CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.add_circle,
                                              color: Colors.brown[400],
                                              size: 22,
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Person'),
                              ],
                            ),
                          )
                        : Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            height: 60,
                            width: 60,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(1.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.green, width: 3),
                                      shape: BoxShape.circle),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/pro2.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Person'),
                              ],
                            ),
                          );
                  }),
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Channels',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage('assets/com.png'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Channels',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'You followed the channel \'Channels\'',
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                Divider(
                  thickness: 0.5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Find Channels',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            'See all',
                            style: TextStyle(
                                color: Colors.brown[400],
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.brown[400],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(2.0),
                    child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Container(
                            width: 140,
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border:
                                  Border.all(width: 0.7, color: Colors.teal),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10.0),
                                        padding: EdgeInsets.all(1),
                                        child: Stack(
                                          children: [
                                            CircleAvatar(
                                              radius: 35,
                                              backgroundImage: AssetImage('assets/com 2.png'),
                                            ),
                                            Positioned(
                                                bottom: 0.0,
                                                right: 0.0,
                                                child: CircleAvatar(
                                                  radius: 12,
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                    Icons.check_circle_rounded,
                                                    color: Colors.amber,
                                                    size: 22,
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Text(
                                        'Name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.all(5.0),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        decoration: BoxDecoration(
                                            color: Colors.lightGreen[50],
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        child: Text(
                                          'Follow',
                                          style: TextStyle(
                                              color: Colors.brown[400],
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        })),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            child: Icon(
              Icons.edit,
              color: Colors.brown[400],
            ),
            backgroundColor: Colors.lightGreen[50],
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            backgroundColor: Colors.brown[400],
          ),
        ],
      ),
    );
  }
}

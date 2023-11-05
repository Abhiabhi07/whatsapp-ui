import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (ctx, index) => ListTile(
          leading: index == 0
              ? Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Image.asset(
                    'assets/pro2.png',
                    fit: BoxFit.cover,
                  ),
                )
              : Container(
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: Image.asset(
                    'assets/pro2.png',
                    fit: BoxFit.cover,
                  ),
                ),
          title: Text(
            'Chat ${index + 1}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          subtitle: index == 0
              ? Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Messages'),
                  ],
                )
              : Text('Messages'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        backgroundColor: Colors.brown[400],
      ),
    );
  }
}

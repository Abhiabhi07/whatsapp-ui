import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.brown[400],
              child: Icon(Icons.attach_file_rounded),
            ),
            title: Text('Create call link',
                style: Theme.of(context).textTheme.titleLarge),
            subtitle: Text('Share a link for your Whatsapp call',
                style: Theme.of(context).textTheme.titleSmall),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
            child: Text(
              'Recent',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (ctx, index) {
                return ListTile(
                  leading: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, image: DecorationImage(image: AssetImage('assets/pro2.png'))),
                  ),
                  title: Text(
                    'Call ${index + 1}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: index == 0
                      ? Row(
                          children: [
                            Icon(
                              Icons.call_missed_rounded,
                              size: 15,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('10 October, 10: 30 pm'),
                          ],
                        )
                      : Text(
                          '10 October, 10: 30 pm',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                  trailing:
                      index == 0 ? Icon(Icons.call) : Icon(Icons.video_call),
                );
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add_call, color: Colors.white,),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    CupertinoIcons.person_3_fill,
                    size: 40,
                    color: Colors.white60,
                  ),
                ),
                Positioned(
                    bottom: 0.0, right: 0.0, child: Icon(Icons.add_circle))
              ],
            ),
          ),
          title: Text(
            'New Communtnity',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Icon(
                    CupertinoIcons.person_3_fill,
                    size: 40,
                    color: Colors.white60,
                  ),
                ),
                title: Text(
                  'Communtnity  ${index + 1}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Community description'),
              );
            },
            separatorBuilder: (ctx, index) => Divider(
                  thickness: 0.3,
                  color: Colors.teal,
                ),
            itemCount: 5),
      ],
    );
  }
}

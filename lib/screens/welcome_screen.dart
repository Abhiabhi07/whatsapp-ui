import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Icon(Icons.more_vert_rounded),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const CircleAvatar(
              radius: 140,
              backgroundImage: AssetImage('assets/whatsapp_circle_pattern.jpg'),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Welcome to WhatsApp',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'Read our ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.teal,
                        fontSize: 17),
                    children: [
                      TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' Tap "Agree and \ncontinue" to accept the',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.teal,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of Service.',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ])),
            SizedBox(
              height: 20,
            ),
            Chip(
              avatar: Icon(
                CupertinoIcons.globe,
                size: 20,
              ),
              label: Text('English'),
              labelStyle: TextStyle(color: Colors.brown),
              shape: StadiumBorder(),
              backgroundColor: Colors.teal[100],
              side: BorderSide(
                width: 0.0,
              ),
            ),
            Spacer(),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => LoginScreen()));
                  },
                  child: Text(
                    'Agree and continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[400],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

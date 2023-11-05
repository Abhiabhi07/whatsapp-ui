import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/verify_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var value = 'India';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Enter your phone number',
          style: TextStyle(
            fontSize: 20,
            color: Colors.brown[400],
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [Icon(Icons.more_vert_rounded, color: Colors.teal)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: <Widget>[
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Whatsapp will need to verify your account ',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    children: [
                      TextSpan(
                        text: 'What\'s\n my number?',
                        style: TextStyle(
                          color: Colors.lightBlue,
                        ),
                      )
                    ])),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Column(
                children: [
                  DropdownButton(
                    value: value,
                    items: [
                      DropdownMenuItem(
                        child: Text('India'),
                        value: value,
                      ),
                      DropdownMenuItem(child: Text('Country2'))
                    ],
                    onChanged: (v) {},
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Colors.black,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Container(
                        width: 40,
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 20,
                            ),
                            Text('91'),
                          ],
                        ),
                      ),
                      hintText: 'phone number',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Carrier charges may apply',
                    style: TextStyle(color: Colors.teal),
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => VerifyScreen()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[400]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

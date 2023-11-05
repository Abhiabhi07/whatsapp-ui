import 'package:flutter/material.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Verifying your number',
          style: TextStyle(color: Colors.brown[400], fontSize: 20),
        ),
        actions: [
          Icon(Icons.more_vert_rounded),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Waiting to automatically detect an SMS sent to\n',
                      style: TextStyle(color: Colors.teal, fontSize: 15),
                      children: [
                        TextSpan(
                            text: '+91 1234 5678 90.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: 'Wrong number?',
                            style: TextStyle(color: Colors.lightBlue))
                      ])),
              SizedBox(
                width: 120,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: '- - -  - - -',
                      hintStyle: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Enter 6-digit code',
                  style: TextStyle(color: Colors.brown[400]),
                ),
              ),
              Text(
                'Didn\'t receive code?',
                style: TextStyle(
                  color: Colors.brown[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'You may request a new code in 10:00',
                style: TextStyle(color: Colors.brown[400]),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: () {},
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
      ),
    );
  }
}

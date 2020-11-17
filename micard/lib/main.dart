import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MiCard());
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Color(0xFFFFFFFF),
              ),
              Text(
                'David Nwaneri',
                style: TextStyle(fontSize: 40.0),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(fontSize: 20.0, color: Color(0xFF00F0F8)),
              ),
              SizedBox(
                width: 150.0,
                height: 25.0,
                child: Divider(
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Card(
                color: Color(0xFFFFFFFF),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+234 808 288 6274',
                    style:
                        TextStyle(fontSize: 20.0, color: Colors.teal.shade900),
                  ),
                ),
              ),
              Card(
                color: Color(0xFFFFFFFF),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'davidn4333@gmail.com',
                    style:
                        TextStyle(fontSize: 20.0, color: Colors.teal.shade900),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

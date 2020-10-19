import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('Images/pic.jpeg'),
              ),
              Text(
                'Proffessor',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'MONEY HEIST',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal[900],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '75112321112',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        color: Colors.teal[900],
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.teal[900],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'abcd@aannn.com',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 15.0,
                          color: Colors.teal[900],
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        'abcd@prof.com',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          color: Colors.teal[900],
                          fontSize: 20.0,
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

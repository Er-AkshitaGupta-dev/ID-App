import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Card(),
  ));
}

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  int myLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: Text('ID CARD'),
        centerTitle: true,
        backgroundColor: Colors.teal[300],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/abc.jpg'),
                radius: 45.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.teal[900],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.teal[900],
                letterSpacing: 2.0,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Akshita',
              style: TextStyle(
                color: Colors.teal[300],
                letterSpacing: 2.0,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              'MY LEVEL',
              style: TextStyle(
                color: Colors.teal[900],
                letterSpacing: 2.0,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$myLevel',
              style: TextStyle(
                color: Colors.teal[300],
                letterSpacing: 2.0,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            FlatButton(
                color: Colors.teal[300],
                onPressed: () {
                  setState(() {
                    myLevel -= 1;
                  });
                },
                child: Icon(Icons.remove)),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail_rounded,
                  color: Colors.teal[900],
                ),
                SizedBox(width: 10.0),
                Text(
                  'er.akshitagupta@gmail.com',
                  style: TextStyle(
                    color: Colors.teal[900],
                    letterSpacing: 1.0,
                    fontSize: 20.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal[300],
      ),
    );
  }
}

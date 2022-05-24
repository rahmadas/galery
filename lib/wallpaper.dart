import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BelajarStackWidget(),
  ));
}

class BelajarStackWidget extends StatefulWidget {
  @override
  _BelajarStackWidgetState createState() => _BelajarStackWidgetState();
}

class _BelajarStackWidgetState extends State<BelajarStackWidget> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.ibb.co/LQy8PZM/hitam.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.facebook,
                color: Colors.blue,
                size: 50.0,
              ),
            ),
            // child: Center(
            //   child: new Icon(Icons.facebook, size: 50.0, color: Colors.white, right),
            // ),
          ),
          Positioned(
            right: 230.0,
            top: 100.0,
            child: Text(date.hour.toString() + ':' + date.minute.toString(), style: TextStyle(color: Colors.white, fontSize: 45.0)),
          ),
          Positioned(
            right: 200.0,
            top: 155.0,
            child: Text("senin 23 mei 2022", style: TextStyle(color: Colors.white, fontSize: 16.0)),
          ),
          Positioned(
            bottom: 48.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Kata Mutiara",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 16.0, right: 16.0, bottom: 8.0),
                    child: Text("Pendidikan adalah senjata paling ampuh yang bisa kamu gunakan untuk mengubah dunia."),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 32.0),
                    child: Text("Nelson Mandela"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

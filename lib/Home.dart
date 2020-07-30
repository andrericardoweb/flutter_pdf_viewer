import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdf_viewer/Option1.dart';
import 'package:flutter_pdf_viewer/Option2.dart';
import 'package:flutter_pdf_viewer/Option3.dart';
import 'package:flutter_pdf_viewer/Option4.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _option1() {
    Navigator.push(
      context,
       MaterialPageRoute(builder: (context) => Option1())
    );
  }

  void _option2() {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => Option2())
    );
  }

  void _option3() {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => Option3())
    );
  }

  void _option4() {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => Option4())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF Viewer"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                        "Opção 1",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: _option1,
                  ),
                  RaisedButton(
                    child: Text(
                      "Opção 2",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: _option2,
                  )
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "Opção 3",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: _option3,
                  ),
                  RaisedButton(
                    child: Text(
                      "Opção 4",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: _option4,
                  )
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}

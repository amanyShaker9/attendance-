import 'package:flutter/material.dart';
class FourthScreen extends StatefulWidget {
  static const String id='doctor_home_screen';
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(70, 71, 237, 20),
        title: Text('attendance'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Text('ggg')
          ],
        ),
      ),
    );
  }
}

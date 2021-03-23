
import 'package:flutter/material.dart';
class AddCourseScreen extends StatefulWidget {
  static const String id='add_course_screen';
  @override
  _AddCourseScreenState createState() => _AddCourseScreenState();
}

class _AddCourseScreenState extends State<AddCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () =>Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0,100.0,10.0,10.0),
              child: Card(child: ListTile(title:Text( 'Academic Year',style: TextStyle(color: Colors.black26),),),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(child: ListTile(title:Text( 'Department',style: TextStyle(color: Colors.black26)),),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,100.0),
              child: Card(child: ListTile(title:Text( 'Subject',style: TextStyle(color: Colors.black26)),),),
            ),
            Container(
              width: 150.0,
              height: 50.0,
              color: Color.fromRGBO(70, 71, 237, 20),
              child: FlatButton(

                child: Text('add',style: TextStyle(color: Colors.white,fontSize: 20.0),), ),
            )
          ],
        ),
      ),
    );
  }
}

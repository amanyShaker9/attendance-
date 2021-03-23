import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
 static const String id='first_screen';
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('images/view2.png'),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'You are...',
            // style: TextStyle(fontSize: 50.0, color: Colors.white),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 55.0, horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                  width: 150.0,
                  color: Color.fromRGBO(70, 71, 237, 20),
                  child: FlatButton(
                    onPressed: () {
                   //   SecondScreen();
                    },
                    child: Text(
                      'Student',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150.0,
                  color: Color.fromRGBO(70, 71, 237, 20),
                  child: MaterialButton(
                      onPressed: () {
                        print('amany');
                        Navigator.pushNamed(context,SecondScreen.id);

                      },
                      child: Text(
                        'Doctor',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    ))
        // Title(Text('first screen')),

        ;
  }
}

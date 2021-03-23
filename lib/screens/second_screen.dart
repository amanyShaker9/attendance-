
import 'package:flutter/material.dart';
import 'signin_screen.dart';
import 'package:flutter/services.dart';

class SecondScreen extends StatefulWidget {
  static const String id='second_screen';
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ReusableCard(
                data: Icons.email,
                txt: "email",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ReusableCard(
                data: Icons.vpn_key,
                txt: 'password',
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    height: 50.0,
                    child: FlatButton(
                      color: Color.fromRGBO(70, 71, 237, 20),
                      textColor: Colors.white,
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 120.0,
                    height: 50.0,
                    child: FlatButton(
                      color:  Color.fromRGBO(70, 71, 237, 20),
                      textColor: Colors.white,
                      child: Text(
                        'sign in',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, ThirdScreen.id);

                      },
                    ),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.data, this.txt});
  final IconData data;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(
        data,
        color: Colors.blue.shade100,
      ),
      title: Text(
        txt,
        style: TextStyle(color: Colors.blue.shade100),
      ),
    ));
  }
}


import 'package:flutter/material.dart';
import 'doctor_home_screen.dart';
class ThirdScreen extends StatefulWidget {
 static const String id='signin_screen';
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            // Text(
            //   'Attendance',
            //   style: TextStyle(
            //       fontSize: 50.0,
            //       color: Colors.blue.shade100,
            //       fontWeight: FontWeight.bold,
            //       letterSpacing: 5.0),
            // ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RefactorCard(
                data: Icons.person_outline,
                text: 'name',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RefactorCard(
                data: Icons.email,
                text: 'mail',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RefactorCard(
                data: Icons.account_box,
                text: 'ssn',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RefactorCard(
                data: Icons.phone,
                text: 'phone',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RefactorCard(
                data: Icons.vpn_key,
                text: 'password',
              ),
            ),
            Container(
                margin: EdgeInsets.all(15.0),
                width: 120.0,
                height: 50.0,
                child: FlatButton(
                    color: Color.fromRGBO(70, 71, 237, 20),
                    textColor: Colors.white,
                    onPressed: (
                        ) {
                      Navigator.pushNamed(context, FourthScreen.id);

                    },
                    child: Text(
                      'signin',
                      style: TextStyle(fontSize: 25.0),
                    )))
          ],
        ),
      ),
    );
  }
}

class RefactorCard extends StatelessWidget {
 final IconData data;
 final String text;
 RefactorCard({this.data, this.text});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(data, color: Colors.blue.shade100),
        title: Text(text, style: TextStyle(color: Colors.blue.shade100)),
      ),
    );
  }
}

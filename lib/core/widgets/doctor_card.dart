import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        spacing: 10,
        children: <Widget>[
          Row(
            spacing: 10,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    color: Color.fromARGB(255, 255, 0, 55),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Dr. Deni Pamungkas",
                  ),
                  Text("Specialist")
                ],
              )
            ],
          ),
          Divider(),
          Row(
            spacing: 20,
            children: <Widget>[Text('call now'), Text('book appointment')],
          )
        ],
      ),
    ));
  }
}

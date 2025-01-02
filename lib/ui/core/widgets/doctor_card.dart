import 'package:flutter/material.dart';
import 'package:mobile_ip_medpoint_sistem/domain/models/doctor.dart';

class DoctorCard extends StatelessWidget {
  final Doctor data;

  const DoctorCard({super.key, required this.data});

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
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1582750433449-648ed127bb54?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Dr. ${data.name}",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text("Specialist")
                ],
              )
            ],
          ),
          Divider(),
          Row(
            spacing: 20,
            children: <Widget>[
              Text(
                'call now',
                style: TextStyle(
                    color: Color.fromARGB(255, 49, 104, 255),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'book appointment',
                style: TextStyle(
                    color: Color.fromARGB(255, 49, 104, 255),
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    ));
  }
}

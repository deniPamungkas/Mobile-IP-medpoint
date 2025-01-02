import 'package:flutter/material.dart';
import 'package:mobile_ip_medpoint_sistem/data/services/doctor.dart';
import 'package:mobile_ip_medpoint_sistem/ui/core/widgets/doctor_card.dart';
import 'package:mobile_ip_medpoint_sistem/domain/models/doctor.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<DoctorResponse> fetchDoctors() async {
//   final String apiKey =
//       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdhbWl0c2xqanRkaWl0bWh4enV6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzM5MzIzODIsImV4cCI6MjA0OTUwODM4Mn0.fUHxrAQHmJ1UPBowZXGJq8uAIztvh9qJeQ_gpt81nek';
//   final http.Response response = await http.get(
//       Uri.parse("http://localhost:8002/doctor"),
//       headers: {'apikey': apiKey});
//   if (response.statusCode == 200) {
//     print(response.body);
//     return DoctorResponse.fromJson(
//         jsonDecode(response.body) as Map<String, dynamic>);
//   } else {
//     print('error abs');
//     throw Exception("failed to load doctors");
//   }
// }

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DoctorResponse>(
        future: fetchDoctors(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final doctors = snapshot.data?.data;
            return ListView.separated(
              itemCount: doctors!.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Color.fromARGB(0, 206, 70, 70),
              ),
              itemBuilder: (BuildContext context, int index) {
                final doctor = doctors[index];
                return DoctorCard(
                  data: doctor,
                );
              },
            );
          }
          return const CircularProgressIndicator();
        });
  }
}

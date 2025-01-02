// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobile_ip_medpoint_sistem/domain/models/doctor.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//get all doctors
Future<DoctorResponse> fetchDoctors() async {
  final String apiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdhbWl0c2xqanRkaWl0bWh4enV6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzM5MzIzODIsImV4cCI6MjA0OTUwODM4Mn0.fUHxrAQHmJ1UPBowZXGJq8uAIztvh9qJeQ_gpt81nek';
  final http.Response response = await http.get(
      Uri.parse("http://10.0.2.2:8002/doctor"),
      headers: {'apikey': apiKey});
  if (response.statusCode == 200) {
    return DoctorResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception("failed to load doctors");
  }
}

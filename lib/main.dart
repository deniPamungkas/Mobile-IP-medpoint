import 'package:flutter/material.dart';
import 'package:mobile_ip_medpoint_sistem/core/widgets/doctor_list.dart';
import 'package:supabase/supabase.dart';

class Supa {
  static const supabaseUrl = 'https://gamitsljjtdiitmhxzuz.supabase.co';
  static const supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdhbWl0c2xqanRkaWl0bWh4enV6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzM5MzIzODIsImV4cCI6MjA0OTUwODM4Mn0.fUHxrAQHmJ1UPBowZXGJq8uAIztvh9qJeQ_gpt81nek';
}

final supabase = SupabaseClient(Supa.supabaseUrl, Supa.supabaseKey);
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Medpoint',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medpoint Doctor list"),
        leading: const Icon(Icons.menu),
        toolbarHeight: 50,
        backgroundColor: Color.fromARGB(100, 82, 114, 255),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: DoctorList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'views/home_ui.dart';

void main() {
  runApp(const FlutterIoTSecondApp());
}

class FlutterIoTSecondApp extends StatelessWidget {
  const FlutterIoTSecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SAU IoT App',
      home: const HomeUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
    );
  }
}

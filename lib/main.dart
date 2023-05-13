import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/homePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: Colors.green,
            textTheme: GoogleFonts.poppinsTextTheme()),
        home: const HomePage());
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/presentation/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed:const Color(0xff5a73d8),
        textTheme:GoogleFonts.plusJakartaSansTextTheme(
          Theme.of(context).textTheme
        ) ,

        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}


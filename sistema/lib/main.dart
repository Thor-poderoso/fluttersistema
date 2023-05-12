/* import 'package:provider/provider.dart';
import 'package:sistema/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sistema/src/controllers/MenuAppController.dart';
import 'package:sistema/src/screens/main/main_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
        ],
        child: const MainScreen(),
      ),
    );
  }
} */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistema/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sistema/src/controllers/MenuAppController.dart';
import 'package:sistema/src/data/models/Login_screen.dart';
import 'package:sistema/src/screens/main/main_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      initialRoute: '/login', // Defina a rota inicial como a tela de login
      routes: {
        '/login': (context) => const LoginScreen(), // Rota para a tela de login
        '/dashboard': (context) => MultiProvider( // Rota para o dashboard
          providers: [
            ChangeNotifierProvider(
              create: (context) => MenuAppController(),
            ),
          ],
          child: const MainScreen(),
        ),
      },
    );
  }
}
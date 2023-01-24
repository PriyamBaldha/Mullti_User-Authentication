// import 'package:flutter/material.dart';
//
// void main() async {
//   // WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//       // routes: {
//       //   '/': (context) => const SplashScreenPage(),
//       //   'login_page': (context) => const LoginPage(),
//       //   'homepage': (context) => const Homepage(),
//       //   'adminPage': (context) => const AdminPage(),
//       // },
//     ),
//   );
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Admin Page"),
//         centerTitle: true,
//       ),
//       body: Container(),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'pages/AdminPage.dart';
import 'pages/Homepage.dart';
import 'pages/Login.dart';
import 'pages/Splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const SplashScreenPage(),
      'login_page': (context) => const LoginPage(),
      'homepage': (context) => const Homepage(),
      'adminPage': (context) => const AdminPage(),
    },
  ));
}

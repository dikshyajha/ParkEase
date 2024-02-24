// import 'package:flutter/material.dart';
// import 'package:parkease/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parkease/home_page.dart';
import 'package:parkease/login.dart';
import 'package:parkease/login_as_admin.dart';

import 'package:parkease/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_page',
      routes: {
        'login': (context) => MyLogin(),
        'register': (context) => MyRegister(),
        'home_page': (context) => MyHome(),
        'login_as_admin': (context) => LoginAsAdmin(),
      },
    );
  }
}

//main.dart


// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: 'home_page',
//     routes: {
//       'login': (context) => MyLogin(),
//       'register': (context) => MyRegister(),
//       'home_page': (context) => MyHome(),
//       'login_as_admin': (context) => LoginAsAdmin(),
//     },
//   ));
// }

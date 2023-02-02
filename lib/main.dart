import 'package:expense/models/bookmarks.dart';
import 'package:expense/extra/dashboard.dart';
import 'package:expense/common/loginpage.dart';
import 'package:expense/models/expense/claimtypemodel.dart';
import 'package:expense/pages/dashboard.dart';
import 'package:expense/pages/expense/createnewclaim.dart';
import 'package:expense/pages/expense/detailedexpense.dart';
import 'package:expense/pages/expense/expenselanding.dart';
import 'package:expense/pages/expense/filter_expense.dart';
import 'package:expense/screens/splash_screen.dart';
import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    //Caselist.getBookmark();
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KEBS',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => const LoginPage()
      },
    );
  }
}

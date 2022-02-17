import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_tenang/provider/provider.dart';
import 'package:test_tenang/screens/homepage.dart';
import 'package:test_tenang/screens/intro.dart';
import 'package:test_tenang/screens/login.dart';
import 'package:test_tenang/screens/mainpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostDataProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: Navigate.routes,
        // home: IntroPage(),
      ),
    );
  }
}

class Navigate {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => IntroPage(),
    '/sign-in': (context) => const Login(),
    '/home': (context) => MainPage()
  };
}

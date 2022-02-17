import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_tenang/provider/provider.dart';
import 'package:test_tenang/screens/intro.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostDataProvider()),
      ],
      child: MaterialApp(
        home: IntroPage(),
      ),
    );
  }
}

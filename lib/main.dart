import 'package:elect_repair/screens/guest/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Sign In',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: const SignInPage(),
      );
}

import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/customer/request/customer_request.dart';
import 'package:elect_repair/screens/guest/widgets/background.dart';
import 'package:elect_repair/screens/repairman/dashbroad/dashbroad.dart';
import 'package:elect_repair/widgets/rounded_input_field.dart';
import 'package:elect_repair/widgets/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var email = '';

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Background(size: _size),
            SingleChildScrollView(
              physics: const ClampingScrollPhysics(
                  parent: NeverScrollableScrollPhysics()),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                          color: primaryColor),
                    ),
                  ),
                  Image.asset(
                    imagePath + repairmanPNG,
                    height: _size.height * 0.3,
                  ),
                  RoundedInputField(
                    hintText: "Email",
                    onChanged: (value) => email = value,
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  SignInButtonBuilder(
                    backgroundColor: primaryColor,
                    onPressed: () => email == 'customer'
                        ? Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const CustomerRequest(),
                            ),
                          )
                        : Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Dashboard(),
                            ),
                          ),
                    text: 'Sign in with Account',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Forgot your account?',
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 1,
                          color: Color.fromRGBO(0, 0, 0, 0.54),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 70,
                          child: Divider(
                            color: Color.fromRGBO(0, 0, 0, 0.54),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'or',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1,
                              color: Color.fromRGBO(0, 0, 0, 0.54),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          child: Divider(
                            color: Color.fromRGBO(0, 0, 0, 0.54),
                          ),
                        )
                      ],
                    ),
                  ),
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Facebook,
                    onPressed: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 1,
                          color: Color.fromRGBO(0, 0, 0, 0.54),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

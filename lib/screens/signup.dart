import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/round_button.dart';
import '../widgets/round_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String email = "";
  String name = "";
  String password = "";
  String cpassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/bg.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage('assets/logo.png'),
              width: 200,
            ),
            const Text(
              'MediCue',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff5DB0A8), fontSize: 30, letterSpacing: 1.5),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RoundInput(
                      label: 'Enter your full name',
                      keyboardType: TextInputType.text,
                      onChanged: (text) {
                        name = text;
                      }),
                  const SizedBox(
                    height: 25,
                  ),
                  RoundInput(
                      label: 'Enter your Email',
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (text) {
                        email = text;
                      }),
                  const SizedBox(
                    height: 25,
                  ),
                  RoundInput(
                      label: 'Enter Password',
                      keyboardType: TextInputType.text,
                      isPassword: true,
                      onChanged: (text) {
                        password = text;
                      }),
                  const SizedBox(
                    height: 25,
                  ),
                  RoundInput(
                      label: 'Confirm Password',
                      keyboardType: TextInputType.text,
                      isPassword: true,
                      onChanged: (text) {
                        cpassword = text;
                      }),
                  const SizedBox(
                    height: 25,
                  ),
                  RoundButton(title: '    SignUp    ', onPressed: () {}),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('Already have an account? '),
                      RichText(
                          text: TextSpan(
                              text: 'Login',
                              style: const TextStyle(
                                  color: Color(0xff5DB0A8),
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/login');
                                })),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

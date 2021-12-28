import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'widgets/round_button.dart';

import 'screens/choose_language.dart';
import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/intro.dart';

void main() {
  runApp(const MediCue());
}

class MediCue extends StatefulWidget {
  const MediCue({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MediCueState();
}

class _MediCueState extends State<MediCue> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicare',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
      routes: {
        '/': (context) => const MyHomePage(),
        '/intro': (context) => const IntroPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/choose_lang': (context) => const ChooseLangPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
            const Text(
              'MediCue',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff5DB0A8), fontSize: 40, letterSpacing: 1.5),
            ),
            const Text(
              'Worry less..Live healthier..',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0x55000000),
                  fontSize: 16,
                  letterSpacing: 2.0),
            ),
            const Image(image: AssetImage('assets/logo.png')),
            const SizedBox(height: 75),
            const Text(
              'Welcome to MediCue!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  letterSpacing: 1.5),
            ),
            const SizedBox(height: 15),
            RoundButton(
                title: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, '/choose_lang');
                })
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/round_button.dart';

class ChooseLangPage extends StatelessWidget {
  const ChooseLangPage({Key? key}) : super(key: key);

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
            const Image(image: AssetImage('assets/nurses.png')),
            const SizedBox(height: 75),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundButton(
                    title: '    Login    ',
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    }),
                const SizedBox(width: 15),
                RoundButton(
                    title: '    SignUp   ',
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

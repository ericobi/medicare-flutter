import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.logout),
                  label: const Text('Logout'),
                ),
                // RichText(
                //     text: TextSpan(
                //         text: 'Logout',
                //         style: const TextStyle(
                //             color: Color(0xff5DB0A8),
                //             fontWeight: FontWeight.bold),
                //         recognizer: TapGestureRecognizer()
                //           ..onTap = () {
                //           })),
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(Icons.logout),
                //   color: const Color(0xff5DB0A8),
                // ),
                const SizedBox(
                  width: 50,
                )
              ],
            ),
            const SizedBox(height: 25),
            const Image(image: AssetImage('assets/intro.png')),
          ],
        ),
      ),
    );
  }
}

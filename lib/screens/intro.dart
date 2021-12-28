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
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Row(
                      children: <Widget>[
                        RichText(
                            text: const TextSpan(
                          text: 'Logout',
                          style: TextStyle(
                              color: Color(0xff5DB0A8),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                        Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff5DB0A8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7.5))),
                            margin: const EdgeInsets.only(left: 5),
                            padding: const EdgeInsets.all(2),
                            child: const Icon(
                              Icons.logout,
                              color: Colors.white,
                            )),
                      ],
                    )),
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

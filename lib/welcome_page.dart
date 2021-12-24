import 'package:flutter/material.dart';
import 'package:flutter_application_4/home.dart';

void main() {
  runApp(WelcomePage());
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/welcome.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'images/logo.png',
              width: 60,
              height: 60,
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Welcome\nto our store',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Ger your groceries in as fast as one hour',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                margin: EdgeInsets.only(bottom: 50),
                width: 350,
                height: 67,
                decoration: BoxDecoration(
                    color: Color(0xff53B175),
                    borderRadius: BorderRadius.circular(19)),
                child: TextButton(
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return BeveragesPage();
                        }),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

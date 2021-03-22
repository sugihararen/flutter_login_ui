import 'package:flutter/material.dart';
import 'package:flutter_login_ui/signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backgraound.jpeg"),
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: FittedBox(
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/sign_in'),
              child: Container(
                margin: EdgeInsets.only(bottom: 25),
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      "START",
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

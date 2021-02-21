import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_demo/home_navigator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text('Home Page'),
            ),
            RaisedButton(
                child: Text('Go Deatail'),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeRoutes.detail))
          ],
        ),
      ),
    );
  }
}

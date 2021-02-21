import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_demo/home_navigator.dart';

import 'app_colors.dart';
import 'app_icons.dart';
import 'pages/order_page.dart';
import 'pages/profile_page.dart';
import 'pages/saved_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: getBody(),
        bottomNavigationBar: getBottomNavigationBar(),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: indexPage,
      children: [HomeNavigator(), OrdersPage(), SavedPage(), ProfilePage()],
    );
  }

  Widget getBottomNavigationBar() {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 70,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(icons.length, (index) {
          return FlatButton(
            color: null,
            onPressed: () {
              setState(() {
                indexPage = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: indexPage == index ? AppColors.primary_1 : null,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  Image.asset(
                    icons[index]['icon'],
                    color: indexPage == index ? AppColors.primary : Colors.grey,
                  ),
                  Padding(padding: const EdgeInsets.only(left: 10)),
                  Text(
                    indexPage == index ? icons[index]['name'] : '',
                    style: TextStyle(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

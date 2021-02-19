import 'package:bunder_test/widgets/badges.dart';
import 'package:bunder_test/widgets/gradientButton.dart';
import 'package:bunder_test/widgets/userInfo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(),
      body: Center(
        child: Text('HomeView'),
      ),
    );
  }
}

class MyFloatingActionButton extends StatelessWidget {
  final user1 = {
    "name": "Lisa Grindon",
    "work": "Designer",
    "company": "Google Inc.",
    "phone": "+7 923 154 89 68",
    "email": "hi.veronika@yandex.ru",
    "token_count": "8",
    "verificate": false
  };
  final Map user = {
    "name": "Lisa Grindon",
    "work": null,
    "company": null,
    "phone": null,
    "email": null,
    "token_count": "8",
    "verificate": false
  };
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            context: context,
            builder: (context) => Container(
                  height: user1["work"] == null ? 195 : 329,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Color.fromRGBO(243, 243, 243, 0.9)),
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 22,
                        ),
                        Container(
                          height: 4,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(173, 187, 209, 1),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Badges(user1),
                        SizedBox(
                          height: 20,
                        ),
                        UserInfo(user1),
                        SizedBox(height: 20),
                        GradientButton()
                      ]),
                ));
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterinstaapp/pages/home.dart';
import 'package:flutterinstaapp/pages/tabs.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                fontFamily: 'regular'
            ),
            home: TabsPage(),
        );
    }
}

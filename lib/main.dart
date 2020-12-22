import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutaicapp/router.dart';
import 'package:nutaicapp/widget/authen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      routes: rounts, initialRoute: '/authen',
      //home: Authen(),
    );
  }
}

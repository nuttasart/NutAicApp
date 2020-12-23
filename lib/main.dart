import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutaicapp/router.dart';
import 'package:nutaicapp/utility/myconstant.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:nutaicapp/widget/authen.dart';

var myIntitial;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String type = preferences.getString(MyConstant().keyType);
  print('type ==> $type');

  if (type != null) {
    switch (type) {
      case 'User':
        myIntitial = '/serviceuser';

        break;
      case 'Office':
        myIntitial = '/serviceofficer';
        break;
      default:
        myIntitial = '/authen';
    }
  } else {
    myIntitial = '/authen';
  }
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
      routes: rounts,
      //initialRoute: '/authen',
      initialRoute: myIntitial,
      //home: Authen(),
    );
  }
}

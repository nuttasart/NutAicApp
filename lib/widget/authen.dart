import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildLogo(),
            buildAppName(),
            buildUser(),
            buildPassword(),
          ],
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Password',
        ),
        autofocus: false,
        obscureText: true,
      ),
    );
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity),
          border: OutlineInputBorder(),
          hintText: 'Username',
        ),
      ),
    );
  }

  Text buildAppName() => Text(
        'NUT AIC App',
        style: GoogleFonts.zcoolKuaiLe(
            textStyle: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.bold,
          color: Colors.indigo.shade900,
          fontStyle: FontStyle.italic,
        )),
      );

  Container buildLogo() {
    return Container(
      width: 150,
      child: Image.asset('images/AIC.png'),
    );
  }
}

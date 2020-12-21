import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedEye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
              center: Alignment(0, -0.2),
              radius: 0.9,
              colors: <Color>[
                Colors.white,
                Colors.blue,
                Colors.indigo,
                Colors.grey.shade700
              ]),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildLogo(),
                buildSnorlax(),
                buildAppName(),
                buildUser(),
                buildPassword(),
                buildLogin(),
                buildRegister()
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextButton buildRegister() => TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/register');
      },
      child: Text('Register'));

  Container buildLogin() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: 250,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Login'),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextField(
        autofocus: false,
        obscureText: statusRedEye,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () {
              setState(() {
                statusRedEye = !statusRedEye;
              });
              print('You kick myeye statusRedEye = $statusRedEye');
            },
          ),
          prefixIcon: Icon(Icons.lock),
          border: OutlineInputBorder(),
          hintText: 'Password',
        ),
      ),
    );
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.rowing),
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

  Container buildSnorlax() {
    return Container(
      width: 100,
      child: Image.asset('images/snorlax.png'),
    );
  }
}

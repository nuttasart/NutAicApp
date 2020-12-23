import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyStyle {
  Widget showProgess() => Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.black,
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.orange),
          strokeWidth: 10,
        ),
      );

  TextStyle whiteStyle() => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );

  TextStyle blackStyle() => TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );

  Widget buildSignOut(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTile(
            onTap: () async {
              SharedPreferences preferences =
                  await SharedPreferences.getInstance();
              preferences.clear();
              Navigator.pushNamedAndRemoveUntil(
                  context, '/authen', (route) => false);
            },
            tileColor: Colors.orange,
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.white,
              size: 36,
            ),
            title: Text(
              'SignOut',
              style: MyStyle().whiteStyle(),
            ),
          ),
        ],
      ),
    );
  }

  MyStyle();
}

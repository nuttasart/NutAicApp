import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStyle {
  Widget showProgess() => Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.black,
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.orange),
          strokeWidth: 10,
        ),
      );

  MyStyle();
}

import 'package:flutter/material.dart';
import 'package:nutaicapp/widget/authen.dart';
import 'package:nutaicapp/widget/register.dart';

final Map<String, WidgetBuilder> rounts = <String, WidgetBuilder>{
  '/authen': (BuildContext context) => Authen(),
  '/register': (BuildContext context) => Register(),
};

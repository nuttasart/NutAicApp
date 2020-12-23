import 'package:flutter/material.dart';
import 'package:nutaicapp/widget/authen.dart';
import 'package:nutaicapp/widget/edit_information.dart';
import 'package:nutaicapp/widget/my_service_office.dart';
import 'package:nutaicapp/widget/my_service_user.dart';
import 'package:nutaicapp/widget/register.dart';

final Map<String, WidgetBuilder> rounts = <String, WidgetBuilder>{
  '/authen': (BuildContext context) => Authen(),
  '/register': (BuildContext context) => Register(),
  '/serviceuser': (BuildContext context) => MyServiceUser(),
  '/serviceofficer': (BuildContext context) => MyServiceOfficer(),
  '/editinformation': (BuildContext context) => EditInformation(),
};

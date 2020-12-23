import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nutaicapp/models/usermodel.dart';
import 'package:nutaicapp/utility/myconstant.dart';
import 'package:nutaicapp/utility/mystyle.dart';
import 'package:nutaicapp/widget/edit_information.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InformationUser extends StatefulWidget {
  @override
  _InformationUserState createState() => _InformationUserState();
}

class _InformationUserState extends State<InformationUser> {
  String idLogin;
  UserModel userModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findInformation();
  }

  Future<Null> findInformation() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    idLogin = preferences.getString('id');
    print('id = $idLogin');

    String path =
        '${MyConstant().domain}/aic/getUserWhereId.php?isAdd=true&id=$idLogin';
    await Dio().get(path).then((value) {
      print('value ==> $value');
      var result = json.decode(value.data);
      print(result);
      for (var item in result) {
        //print(item);
        setState(() {
          userModel = UserModel.fromMap(item);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditInformation(userModel: userModel),
          ),
        ).then((value) => findInformation()),
        child: Text('EDIT'),
      ),
      body: userModel == null
          ? MyStyle().showProgess()
          : userModel.address.isEmpty
              ? Text('ข้อมูลไม่ครบ กด EDIT')
              : Text('have data'),
    );
  }
}

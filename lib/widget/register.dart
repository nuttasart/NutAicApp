import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String typeUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.cloud_upload),
      ),
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          children: [
            buildName(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              buildRadioListTileUser(),
              buildRadioListTileOfficer(),
            ]),
            buildUser(),
            buildPassword(),
          ],
        ),
      ),
    );
  }

  Container buildRadioListTileOfficer() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      child: RadioListTile(
        subtitle: Text('for Register Type Officer'),
        title: const Text('Officer'),
        value: 'Officer',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value;
            //print(typeUser);
          });
        },
      ),
    );
  }

  Container buildRadioListTileUser() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      child: RadioListTile(
        subtitle: Text('for Register Type User'),
        title: const Text('User'),
        value: 'User',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value;
            //print(typeUser);
          });
        },
      ),
    );
  }

  Container buildName() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.group),
          border: OutlineInputBorder(),
          hintText: 'Name',
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
          hintText: 'User',
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
          prefixIcon: Icon(Icons.lock),
          border: OutlineInputBorder(),
          hintText: 'Password',
        ),
      ),
    );
  }
}

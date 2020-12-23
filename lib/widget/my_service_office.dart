import 'package:flutter/material.dart';
import 'package:nutaicapp/utility/myconstant.dart';
import 'package:nutaicapp/utility/mystyle.dart';
import 'package:nutaicapp/widget/page2.dart';
import 'package:nutaicapp/widget/showlistjob.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServiceOfficer extends StatefulWidget {
  @override
  _MyServiceOfficerState createState() => _MyServiceOfficerState();
}

class _MyServiceOfficerState extends State<MyServiceOfficer> {
  String nameLogin;
  Widget currentWidget = ShowListJob();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findLogin();
  }

  Future<Null> findLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      nameLogin = preferences.getString(MyConstant().keyName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameLogin == null ? 'Officer: ' : 'Officer: $nameLogin'),
      ),
      drawer: buildDrawer(context),
      body: currentWidget,
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          MyStyle().buildSignOut(context),
          Column(
            children: [
              buildUserAccountsDrawerHeader(),
              buildMenuShowJob(),
              buildMenuPage2(),
            ],
          ),
        ],
      ),
    );
  }

  ListTile buildMenuPage2() {
    return ListTile(
      leading: Icon(Icons.list),
      title: Text('Page 2'),
      subtitle: Text('Display Page 2'),
      onTap: () {
        Navigator.pop(context);
        setState(() {
          currentWidget = Page2();
        });
      },
    );
  }

  ListTile buildMenuShowJob() {
    return ListTile(
      leading: Icon(Icons.list),
      title: Text('Show List Job'),
      subtitle: Text('แสดงรายชื่อของงานที่รับผิดชอบ'),
      onTap: () {
        Navigator.pop(context);
        setState(() {
          currentWidget = ShowListJob();
        });
      },
    );
  }

  UserAccountsDrawerHeader buildUserAccountsDrawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/yuam.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      currentAccountPicture: Image.asset('images/snorlax.png'),
      accountName: nameLogin == null ? Text('Name') : Text(nameLogin),
      accountEmail: Text('Logined'),
    );
  }
}

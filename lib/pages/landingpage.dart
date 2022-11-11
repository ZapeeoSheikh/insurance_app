import 'dart:async';

import 'package:flutter/material.dart';
import 'package:n_app/Ui%20Kit/ui.dart';
import 'package:n_app/pages/signup.dart';

import '../Ui Kit/ui.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  // Rider r2 = new Rider(username: "", Rname: "", status: "");

  void initState() {
    // var abc = dbaccess("","","");
    // abc.then((value) => print(value.toString()));
    // Future<Rider> r1 = dbRiderLatest();
    // // r1.then((value) => globals.Username = value.username);
    // r1.then((value) => globals.Username=value.username);
    super.initState();
    startTime();
    // print("landing " + globals.isLoggedIn.toString());
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Signup(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
        MyColor.mainColor1,
        MyColor.mainColor1dark,],
        ),),
        // Colors.grey.withAlpha(20),
        // Colors.white.withAlpha(20),


        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
              child: Image(
                image: AssetImage("images/vector/Logoback.png"),
              ),
            ),
            Center(
              child: Image(
                image: AssetImage("images/vector/logo.png"),
              ),
            ),
          ]
        ),
      ),
    );
  }
}

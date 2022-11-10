import 'package:flutter/material.dart';
import 'package:n_app/pages/auth.dart';
import 'package:n_app/pages/landingpage.dart';
import 'package:n_app/pages/signup.dart';
import 'package:n_app/routes/routes.dart';

import 'Ui Kit/ui.dart';
import 'demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          buttonColor: MyColor.mainColor1,
          canvasColor: Colors.white,
          // drawerTheme: DrawerThemeData(
          //   backgroundColor: MyColor.mainColor1
          // ),
          primaryColor: MyColor.mainColor1,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: MyColor.mainColor1),
          appBarTheme: AppBarTheme(
            // color: MyColor.mainColor1,
              backgroundColor: MyColor.mainColor1),
          inputDecorationTheme: InputDecorationTheme()),
      routes: {
        // Routes.home: (context) => Dashboard(),
        Routes.signup: (context) => Signup(
        ),
        // Routes.login: (context) => LoginPage(
        //   onSubmit: (String value) {},
        // ),
        Routes.auth: (context) => Auth(),
        // Routes.searchFilter: (context) => SearchFilter(),
        // Routes.allCategories: (context) => AllCategories(),
        // Routes.cartDetails: (context) => CartDetails(),
        // Routes.allShops: (context) => AllShops(),
        // Routes.categories: (context) => Categeory(),
        // Routes.reviewOrder: (context) => ReviewOrder(),
        // Routes.orderDetails: (context) => OrderDetails(),
        // Routes.navbar: (context) => MyBottomNav(),
        // Routes.addnewcc: (context) => AddNewCard(),

      },
      // home: LandingPage(),
      // home: Testing(),
      home: Signup(),
      // home: Dismesss(),
      // home: Signup(onSubmit: (String value) {  },),
      // home: BarChartSample2(),
      // ),
    );
  }
}

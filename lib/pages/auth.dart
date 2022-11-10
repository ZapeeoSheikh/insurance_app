import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Ui Kit/ui.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        setState(() {});
      },
      child: Scaffold(
        backgroundColor: MyColor.mainColor1dark,
        body: Column(
          children: [
            Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                            color: MyColor.mainColor2,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: MyColor.mainColor2,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 150,
                left: 20,
                child: Text("Verify",
                    style: GoogleFonts.nunito(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image(image: AssetImage("images/vector/auth.png"))),
                ],
              ),

            ]),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}

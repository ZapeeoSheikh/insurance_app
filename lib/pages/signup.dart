import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:n_app/Ui%20Kit/ui.dart';

import '../routes/routes.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  late SingleValueDropDownController _cnt;
  late MultiValueDropDownController _cntMulti;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    _cntMulti = MultiValueDropDownController();
    super.initState();
  }

  @override
  void dispose() {
    _cnt.dispose();
    _cntMulti.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        setState(() {

        });
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
                child: Text("Login",
                    style: GoogleFonts.nunito(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              )
            ]),
            Expanded(child: Container()),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: MyColor.mainColor2,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    // width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Mobile Number",
                                  style: GoogleFonts.nunito(
                                      fontSize: 25,
                                      color: MyColor.inActive,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          Row(
                            children: [
                              Flexible(
                                child: Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width/3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(3),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.7),
                                        spreadRadius: 0.76,
                                        blurRadius: 5,
                                        offset: Offset(0,
                                            5), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: SingleChildScrollView(
                                    child: Form(
                                      key: _formKey,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Form(
                                              key: formKey,
                                              child: DropDownTextField(
                                                // initialValue: "+92",
                                                readOnly: false,
                                                controller: _cnt,
                                                clearOption: true,
                                                clearIconProperty: IconProperty(color: MyColor.mainColor2,size: 18),
                                                searchDecoration: const InputDecoration(
                                                    hintText: "Country Code"),
                                                validator: (value) {
                                                  if (value == null || value.isEmpty) {
                                                    return "Required field";
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                                dropDownItemCount: 4,

                                                dropDownList: const [
                                                  DropDownValueModel(name: '+91', value: "value1"),
                                                  DropDownValueModel(
                                                      name: '+92',
                                                      value: "value2",
                                                      toolTipMsg:
                                                      "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                                                  DropDownValueModel(name: '+93', value: "value3"),
                                                  DropDownValueModel(
                                                      name: '+94',
                                                      value: "value4",
                                                      toolTipMsg:
                                                      "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                                                  DropDownValueModel(name: '+92', value: "value5"),
                                                  DropDownValueModel(name: '+92', value: "value6"),
                                                  DropDownValueModel(name: '+92', value: "value7"),
                                                  DropDownValueModel(name: '+92', value: "value8"),
                                                ],
                                                onChanged: (val) {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: MediaQuery.of(context).size.width/1.6,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.7),
                                      spreadRadius: 0.76,
                                      blurRadius: 5,
                                      offset: Offset(0,
                                          5), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: TextField(
                                    // controller: _controller2,
                                    cursorColor: MyColor.mainColor1,
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                        hintText: '3245234804',
                                        labelText: 'Enter Number',
                                        labelStyle: TextStyle(
                                            color: MyColor.inActive),

                                        focusedBorder: OutlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                          new BorderRadius.circular(
                                              25.7),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.white),
                                          borderRadius:
                                          new BorderRadius.circular(
                                              25.7),
                                        ),

                                        errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.red,
                                                width: 2)),
                                     ),
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {
                          formKey.currentState!.validate();
                          Navigator.pushNamed(context, Routes.auth);
                        },
                        child: Text(
                          "Verify",
                          style: GoogleFonts.nunito(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginPage/screens/loginPage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _email;
  TextEditingController _password;

  FocusNode _emailFocus;
  FocusNode _passwordFocus;

  bool boxValue = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();

    _emailFocus = FocusNode();
    _passwordFocus = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: _media.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                Text("Sign Up",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(fontSize: 26),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text("Please sign up to enter in a app.",
                    style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(fontSize: 14, color: Color(0xff8B959A)),
                    )),
                SizedBox(
                  height: 60,
                ),
                Text("Enter via social networks",
                    style: TextStyle(fontSize: 14, color: Color(0xff8B959A))),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: _media.height * .07,
                      width: _media.width * .43,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Color(0xff76A9EA),
                        child: Icon(
                          MdiIcons.twitter,
                          color: Colors.white,
                          size: 45,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: _media.height * .07,
                      width: _media.width * .43,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Color(0xff475993),
                        child: Icon(
                          MdiIcons.facebook,
                          color: Colors.white,
                          size: 45,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text("or login with email",
                    style: TextStyle(fontSize: 14, color: Color(0xff8B959A))),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _email,
                  focusNode: _emailFocus,
                  decoration: InputDecoration(
                      labelText: "Email",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE2E6EA))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _password,
                  focusNode: _passwordFocus,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE2E6EA))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue))),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Checkbox(
                          value: boxValue,
                          onChanged: (value) {
                            setState(() {
                              boxValue = value;
                            });
                          }),
                    ),
                    Text("Remember me",
                        style: GoogleFonts.roboto(
                          textStyle:
                              TextStyle(fontSize: 15, color: Color(0xff696969)),
                        )),
                    Spacer(),
                    Text("Forgot password?",
                        style: GoogleFonts.roboto(
                          textStyle:
                              TextStyle(fontSize: 15, color: Color(0xff696969)),
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: _media.height * .07,
                    width: _media.width,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xff3C82FF),
                      child: Text("Sign Up",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 17))),
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an acoount ?",
                        style: GoogleFonts.roboto(
                          textStyle:
                              TextStyle(fontSize: 14, color: Color(0xff8B959A)),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text("Login",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 14, color: Color(0xff3C82FF)),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

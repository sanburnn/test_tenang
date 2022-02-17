import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test_tenang/screens/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool cekbox = false;
  bool validate = false;
  bool inHiddenPass = true;
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                height: 95,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 32,
                          color: Color(0xff4E4B66),
                        )),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color(0xff4E4B66),
                                fontWeight: FontWeight.bold,
                                fontSize: 27),
                          ),
                          Text(
                            'create new account',
                            style: TextStyle(
                                color: Color(0xff8A8D9F),
                                fontSize: 22,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            // controller: emailController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffE5E5E5),
                                hintText: "Full Name",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Input Full name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            // controller: emailController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffE5E5E5),
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30.0),
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Input Username';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            // controller: passController,
                            obscureText: _isHidden,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffE5E5E5),
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                suffixIcon: InkWell(
                                  onTap: togglebutton,
                                  child: Icon(
                                    _isHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Input Password';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: cekbox,
                                  onChanged: (value) {
                                    setState(() {
                                      cekbox = value!;
                                    });
                                  },
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'By creating an account you agree to',
                                      style: TextStyle(
                                          color: Color(0xff4E4B66),
                                          fontSize: 17,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Text(
                                      'our Terms of Service and Privacy Policy',
                                      style: TextStyle(
                                          color: Color(0xff4E4B66),
                                          fontSize: 17,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff4A80FF),
                                    onPrimary: Colors.white, // foreground
                                    shape: StadiumBorder()),
                                onPressed: () {}
                                // => login()
                                ,
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                )),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have Account?',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                child: Text(
                                  'Sign In!',
                                  style: TextStyle(
                                      color: Color(0xff4A80FF),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
                                },
                              )
                            ],
                          )
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void togglebutton() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}

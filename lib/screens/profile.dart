import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_tenang/screens/intro.dart';
import 'package:test_tenang/services/FirebaseService.dart';

class Users extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UsersState();
  }
}

class UsersState extends State<Users> {
  bool isLoading = false;
  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        SystemNavigator.pop();
        return Future.value(false);
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: -90,
                left: -125,
                child: Container(
                    height: 300,
                    width: 250,
                    child: Transform.translate(
                        offset: Offset(-5.0, 60.0),
                        child: Opacity(
                          opacity: 0.3,
                          child: Image.asset(
                            'assets/images/elipse2.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ))),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 75,
                      backgroundImage: NetworkImage(user!.photoURL!),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: Text(
                    user!.displayName!,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4E4B66)),
                  )),
                  Center(
                      child: Text(
                    user!.email!,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4E4B66)),
                  )),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                  )
                ],
              ),
              Positioned(
                bottom: 150,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: SizedBox(
                        width: 300,
                        height: 75,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(),
                            backgroundColor: Color(0xFFF5F6F9),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => About()));
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                                height: 50,
                              ),
                              Container(
                                child:
                                    Image.asset('assets/images/abouticons.png'),
                              ),
                              Text(
                                'About',
                                style: TextStyle(
                                    color: Color(0xff303030),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: "Nunito Sans"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff909090),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: SizedBox(
                        width: 300,
                        height: 75,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(),
                            backgroundColor: Color(0xFFF5F6F9),
                          ),
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });
                            FirebaseService service = new FirebaseService();
                            try {
                              await service.signOutFromGoogle();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => IntroPage()));
                            } catch (e) {
                              if (e is FirebaseAuthException) {
                                showMessage(e.message!);
                              }
                            }
                            setState(() {
                              isLoading = false;
                            });
                          },
                          // => logOut()

                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                                height: 50,
                              ),
                              Container(
                                child:
                                    Image.asset('assets/images/exiticons.png'),
                              ),
                              Text(
                                'Logout',
                                style: TextStyle(
                                    color: Color(0xff303030),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: "Nunito Sans"),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff909090),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -40,
                right: -135,
                child: Container(
                    height: 350,
                    width: 380,
                    child: Transform.translate(
                        offset: Offset(-5.0, 60.0),
                        child: Opacity(
                          opacity: 0.3,
                          child: Image.asset(
                            'assets/images/elipse3.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ))),
              ),
              Positioned(
                bottom: 20,
                left: 50,
                child: Text(
                  'Powered by Dimas MF',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showMessage(String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text(message),
            actions: [
              TextButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}

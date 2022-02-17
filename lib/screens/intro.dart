import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:test_tenang/screens/login.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  _IntroPageState();
  bool clicked = false;
  void afterIntroComplete() {
    setState(() {
      clicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<PageViewModel> pages = [
      PageViewModel(
        titleWidget: Column(
          children: <Widget>[
            SizedBox(
              height: 0.2,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFFCFCFC),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45))),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Welcome to Alesha',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Reference site about Lorem',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Ipsum, giving information origins',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'as well as a random',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
                child: SizedBox(
              height: 200,
              width: 350,
              child: Image(image: AssetImage('assets/images/intro1.png')),
            )),
          ],
        ),
        body: "",
        decoration: const PageDecoration(
            pageColor: Color(0xff3462FF),
            bodyTextStyle: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
            descriptionPadding: EdgeInsets.only(left: 0, right: 0),
            imagePadding: EdgeInsets.all(40)),
      ),
      PageViewModel(
        titleWidget: Column(
          children: <Widget>[
            SizedBox(
              height: 0.2,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFFCFCFC),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45))),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Welcome to Alesha',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Reference site about Lorem',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Ipsum, giving information origins',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'as well as a random',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
                child: SizedBox(
              height: 200,
              width: 350,
              child: Image(image: AssetImage('assets/images/intro2.png')),
            )),
          ],
        ),
        body: "",
        decoration: const PageDecoration(
            pageColor: Color(0xff3462FF),
            bodyTextStyle: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
            descriptionPadding: EdgeInsets.only(left: 20, right: 20),
            imagePadding: EdgeInsets.all(20)),
      ),
      PageViewModel(
        titleWidget: Column(
          children: <Widget>[
            SizedBox(
              height: 0.2,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFFCFCFC),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45))),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Welcome to Alesha',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Reference site about Lorem',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Ipsum, giving information origins',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'as well as a random',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      height: 49,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff4A80FF),
                            onPrimary: Colors.white,
                            shape: StadiumBorder()),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: const Text('Masuk Aplikasi!'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
                child: SizedBox(
              height: 200,
              width: 350,
              child: Image(image: AssetImage('assets/images/intro3.png')),
            )),
          ],
        ),
        body: "",
        decoration: const PageDecoration(
            pageColor: Color(0xff3462FF),
            bodyTextStyle: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
            descriptionPadding: EdgeInsets.only(left: 0, right: 0),
            imagePadding: EdgeInsets.all(40)),
      ),
    ];

    return clicked
        ? Login()
        : IntroductionScreen(
            pages: pages,
            dotsDecorator: DotsDecorator(
                size: const Size.square(10.0),
                activeSize: const Size(20.0, 10.0),
                activeColor: Color(0xFFFFFFFF),
                color: Color(0xFF979797),
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
            onDone: () {
              afterIntroComplete();
            },
            onSkip: () {
              afterIntroComplete();
            },
            showSkipButton: true,
            skip: const Text('Skip',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.grey)),
            next: const Icon(Icons.navigate_next),
            nextColor: Color(0xFF959694),
            showDoneButton: false,
            done: const Text("DONE",
                style: TextStyle(fontWeight: FontWeight.w600)),
            doneColor: Color(0xFFFCFCFC),
            globalBackgroundColor: Color(0xff3462FF),
          );
  }
}

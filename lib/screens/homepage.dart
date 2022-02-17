import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_tenang/screens/searchdoctor.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4E4B66)),
                      ),
                      Text(
                        user!.displayName!,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4E4B66)),
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 39,
                    backgroundImage: NetworkImage(user!.photoURL!),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Category',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff4E4B66)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                        height: 65,
                        child: Image(
                            image: AssetImage('assets/images/pusing.png'))),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF4F5F7),
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Brain Damage',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                        height: 65,
                        child: Image(
                            image: AssetImage('assets/images/takut.png'))),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF4F5F7),
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Alzhemeir',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                        height: 65,
                        child: Image(
                            image: AssetImage('assets/images/takut.png'))),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF4F5F7),
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Trust Issue',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Searchdoctor()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Color(0xff4E4B66),
                  ),
                  Text(
                    'Search Doctor',
                    style: TextStyle(
                      color: Color(0xff4E4B66),
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffF4F5F7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Appointment Today',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4E4B66)),
                ),
                Spacer(),
                InkWell(
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFBE981C)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 190,
                height: 220,
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xff4A80FF),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 39,
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            backgroundColor: Colors.grey,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Dr. Anazumi hidayahh',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Mental Health Specialist',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 64,
                      margin: EdgeInsets.symmetric(vertical: 16),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 159, 195, 241).withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.calendar_today_rounded,
                              color: Colors.white,
                            ),
                            Text('Monday, Jully 29',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )),
                            Icon(
                              Icons.timer_sharp,
                              color: Colors.white,
                            ),
                            Text('11:00 - 12:00 AM',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            onTap: () {},
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Top Doctor',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4E4B66)),
              )),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 117,
                  margin: EdgeInsets.symmetric(vertical: 16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 180, 180, 180),
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        child: Image(
                            image: AssetImage('assets/images/profile.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr Aayla lalala',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff4E4B66),
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Hearth Specialist - Surabaya',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color(0xff8A8D9F),
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.0',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8A8D9F),
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '-',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8A8D9F),
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '50 Reviews',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8A8D9F),
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 117,
                  margin: EdgeInsets.symmetric(vertical: 16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 180, 180, 180),
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        child: Image(
                            image: AssetImage('assets/images/profile.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr Aayla lalala',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff4E4B66),
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Hearth Specialist - Surabaya',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color(0xff8A8D9F),
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.0',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8A8D9F),
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '-',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8A8D9F),
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '50 Reviews',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8A8D9F),
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 117,
                  margin: EdgeInsets.symmetric(vertical: 16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 180, 180, 180),
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        child: Image(
                            image: AssetImage('assets/images/profile.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr Aayla lalala',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff4E4B66),
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Hearth Specialist - Surabaya',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color(0xff8A8D9F),
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.0',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8A8D9F),
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '-',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8A8D9F),
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '50 Reviews',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8A8D9F),
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

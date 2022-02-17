import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
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
                        'Users',
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
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
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
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: ElevatedButton(
              onPressed: () {},
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
            height: 13,
          ),
          InkWell(
            child: Container(
              child: Card(
                color: Color(0xff4A80FF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0)),
              ),
            ),
            onTap: () {},
          )
        ],
      ),
    ));
  }
}

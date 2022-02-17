import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:test_tenang/provider/provider.dart';
import 'package:test_tenang/screens/detailappointment.dart';

class Appointment extends StatefulWidget {
  Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  final con = PostDataProvider();
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    init();
    super.initState();
  }

  void init() async {
    final prov = Provider.of<PostDataProvider>(context, listen: false);
    setState(() {
      isLoading = true;
    });
    await prov.getUsers();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          height: 70,
          child: Row(
            children: [
              SizedBox(
                width: 88,
              ),
              Text(
                'Appointment',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Text(
            'List of Doctor',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff4E4B66)),
          ),
        ),
        Consumer<PostDataProvider>(
          builder: (context, value, child) {
            final bala = value.maha;
            print(bala);
            if (isLoading) {
              return Column(
                children: [
                  Center(
                    child: Lottie.asset('assets/lottie/sliders.json'),
                  ),
                  Text(
                    'Loading Data .. ...',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              );
            }
            if (bala.isEmpty) {
              return Center(
                child: Text('Barang Kosong'),
              );
            }
            return Expanded(
                child: ListView(
                    children: bala
                        .map(
                          (maha) => InkWell(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 70,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/profile.png')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            maha.nama!,
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
                                            maha.alamat!,
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailAppointment()));
                            },
                          ),
                        )
                        .toList()));
          },
        )
      ],
    )));
  }
}

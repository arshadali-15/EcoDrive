import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListViewBuilder(

        ),
      ),
    );
  }
}

class ListViewBuilder extends StatelessWidget {


  final db = FirebaseFirestore.instance;

  ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlueAccent,
            leading: Hero(
                tag: 'eco_drive',
                child: Image.asset('assets/images/eco_drive.png')),
            centerTitle: true,
            title: const Text(
              "Eco Drive",
              style: TextStyle(
                  fontFamily: 'Tektur',
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: StreamBuilder(
            stream: db.collection('vehicles').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView(
                  children: snapshot.data!.docs.map((doc) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Image(
                              width: 60,
                              height: 60,
                              image: NetworkImage(doc.data()['type'])),
                          //  Icon(Icons.bike_scooter_sharp,size:40),
                          Container(
                            width: mq.width * .8,
                            child: Card(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  // color: color,
                                  color: doc.data()['mileage'] > 15 &&
                                          doc.data()['age'] < 5
                                      ? Colors.green
                                      : doc.data()['mileage'] >= 15 &&
                                              doc.data()['age'] > 5
                                          ? Colors.amber
                                          : Colors.red,
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          doc.data()['name'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("Year :${doc.data()['age']}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            "Mileage : ${doc.data()['mileage']}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                            "Condition : ${doc.data()['condition']}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                );
              }
            },
          ),
        ));
  }
}

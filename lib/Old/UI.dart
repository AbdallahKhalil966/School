import 'package:flutter/material.dart';

import 'CustomCont.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.analytics), label: "Analytics"),
        BottomNavigationBarItem(
            icon: Icon(Icons.medical_information), label: "Prescriptions"),
        BottomNavigationBarItem(icon: Icon(Icons.person_4), label: "Profile"),
      ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Card(
              elevation: 10.0,
              child: Container(
                height: 400,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xff282828),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff363636),
                          blurRadius: 7,
                          spreadRadius: 5)
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(60)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Ahmed Mohamed",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        customcont(
                            icon: Icons.calendar_today_sharp,
                            customcolor_icon: Color(0xff2296f3),
                            customcolor_cont: Color(0xffcee3f8),
                            text1: "Age",
                            text2: "26",
                            text3: "years",
                            customcolor_border: Color(0xff2296f3)),
                        customcont(
                            icon: Icons.balance,
                            customcolor_icon: Color(0xff43ad4c),
                            customcolor_cont: Color(0xffc6efc5),
                            text1: "Weight",
                            text2: "78",
                            text3: "Kg",
                            customcolor_border: Color(0xff43ad4c)),
                        customcont(
                            icon: Icons.arrow_circle_up_sharp,
                            customcolor_icon: Color(0xfff59d0c),
                            customcolor_cont: Color(0xffffe6c5),
                            text1: "Height",
                            text2: "179.0",
                            text3: "cm",
                            customcolor_border: Color(0xfff59d0c)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              height: 120,
              width: 350,
              decoration: BoxDecoration(
                  color: Color(0xff282828),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff363636),
                        blurRadius: 7,
                        spreadRadius: 5)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.sunny,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Light Theme"),
                      SizedBox(
                        width: 140,
                      ),
                      Switch(value: true, onChanged: (test) {})
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.language,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("English"),
                      SizedBox(
                        width: 210,
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 25),
            child: Container(
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                  color: Color(0xff282828),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff363636),
                        blurRadius: 7,
                        spreadRadius: 5)
                  ]),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.logout),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Logout")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

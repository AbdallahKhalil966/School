import 'package:flutter/material.dart';
import 'package:ui/EditProfile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentIndex_ = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: currentIndex_,
          onTap: (int value) {
            setState(() {
              currentIndex_ = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.watch_later), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ""),
            BottomNavigationBarItem(
                icon: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                label: "")
          ]),
      appBar: AppBar(
        forceMaterialTransparency: true,
        leadingWidth: 100,
        leading: const Text(
          " Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        bottom: PreferredSize(
            preferredSize: const Size(200, 240),
            child: Column(
              children: [
                Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 50,
                      ),
                      Positioned(
                        top: 70,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 23,
                          child: CircleAvatar(
                            backgroundColor: Color(0xffe1f5ff),
                            radius: 20,
                            child: IconButton(
                              onPressed: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Edit_Profile(),
                              )),
                              icon: Icon(Icons.edit),
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      )
                    ]),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "Tyler Mason",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const Text(
                  "tylermason309@gmail.com",
                  style: TextStyle(color: Colors.black54),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Become an publisher",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            )),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Account settings",
              style: TextStyle(color: Colors.black45),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            trailing: Icon(Icons.arrow_forward_ios, size: 15),
            leading: Text(
              "Personal information",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            trailing: Icon(Icons.arrow_forward_ios, size: 15),
            leading: Text(
              "Notifications",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            trailing: Icon(Icons.arrow_forward_ios, size: 15),
            leading: Text(
              "Time spent",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            trailing: Icon(Icons.arrow_forward_ios, size: 15),
            leading: Text(
              "Following",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Help & Support",
              style: TextStyle(color: Colors.black45),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            trailing: Icon(Icons.arrow_forward_ios, size: 15),
            leading: Text(
              "Privacy policy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            trailing: Icon(Icons.arrow_forward_ios, size: 15),
            leading: Text(
              "Terms & Conditions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            trailing: Icon(Icons.arrow_forward_ios, size: 15),
            leading: Text(
              "FAQ & Help",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Text(
              "Log out",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

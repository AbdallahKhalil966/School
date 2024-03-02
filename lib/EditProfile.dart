import 'package:flutter/material.dart';

class Edit_Profile extends StatelessWidget {
  const Edit_Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leadingWidth: 50,
        title: const Text(
          " Edit profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        bottom: PreferredSize(
            preferredSize: const Size(200, 170),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Edit image",
                      style: TextStyle(color: Colors.blue),
                    )),
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.mail_outline),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "tylermason309@gmail.com",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Icon(
                  Icons.close,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.person_3_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "tyler mason",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.close,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Change password",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey,
                    ),
                    hintText: "Enter old password",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey,
                    ),
                    hintText: "Enter new password",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 140),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: Colors.black))
          ],
        ),
      ),
    );
  }
}

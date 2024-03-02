import 'package:flutter/material.dart';

class ui extends StatefulWidget {
  const ui({super.key});

  @override
  State<ui> createState() => _uiState();
}

class _uiState extends State<ui> {
  bool? check = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          "Sign In",
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Text(
              "Sign in with your email and password ",
              style: TextStyle(color: Colors.black45),
            ),
            const Text(
              "or continue with social media",
              style: TextStyle(color: Colors.black45),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    suffixIcon: const Icon(
                      Icons.mail_outlined,
                      color: Colors.black45,
                    ),
                    hintText: "Enter your email",
                    labelText: "Email",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    suffixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.black45,
                    ),
                    hintText: "Enter your password",
                    labelText: "Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: check,
                          onChanged: (bool? value) {
                            setState(() {
                              check = value;
                            });
                          }),
                      const Text("Remember me")
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.grey),
                      )),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xffeb7545)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
                  padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 150, vertical: 15))),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 110,
                ),
                Container(
                  width: 41,
                  height: 41,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff9f6f9),
                  ),
                  child: const Icon(
                    Icons.g_translate,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 41,
                  height: 41,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff9f6f9),
                  ),
                  child: const Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 41,
                  height: 41,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff9f6f9),
                  ),
                  child: const Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Color(0xffe47348)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/home.dart';
import 'package:my_app/index.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              color: Colors.grey,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return Home_page();
                  },
                ));
              },
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 270, 20),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email', hintText: "Insert your email here"),
              onChanged: (value) {
                setState(() {
                  _email = value.trim(); // ตัดช่องว่างออก
                });
              }, //ค่าที่ใส่จะให้ทำอะไร
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              obscureText: true, //ปิด password
              decoration: InputDecoration(
                  labelText: 'Plassword',
                  hintText: "Insert your Plassword here"),
              onChanged: (value) {
                setState(() {
                  _password = value.trim(); // ตัดช่องว่างออก
                });
              }, //ค่าที่ใส่จะให้ทำอะไร
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 300,
              child: ElevatedButton.icon(
                  onPressed: () async {
                    try {
                      await auth.signInWithEmailAndPassword(
                          email: _email, password: _password);
                      print('Login');
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) {
                          return Index_page();
                        },
                      ));
                    } on FirebaseAuthException catch (e) {
                      print(e.message);
                    }
                  },
                  icon: Icon(Icons.login),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)))),
                  label: Text(
                    'Login',
                    style: TextStyle(fontSize: 16),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

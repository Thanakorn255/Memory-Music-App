import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Login-Register/home.dart';
import 'package:my_app/index.dart';

class Register_page extends StatefulWidget {
  const Register_page({Key? key}) : super(key: key);

  @override
  _Register_pageState createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
  late String _email, _password, _name;
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
              icon: const Icon(Icons.navigate_before),
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
                'Register',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Name', hintText: "Insert your name here"),
              onChanged: (value) {
                setState(() {
                  _name = value.trim(); // ตัดช่องว่างออก
                });
              }, //ค่าที่ใส่จะให้ทำอะไร
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
              obscureText: true,
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
                      await auth.createUserWithEmailAndPassword(
                          email: _email, password: _password);
                      print('Register');
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) {
                          return Index_page();
                        },
                      ));
                    } on FirebaseAuthException catch (e) {
                      print(e.message);
                    }
                  },
                  icon: Icon(Icons.add),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)))),
                  label: Text(
                    'Register',
                    style: TextStyle(fontSize: 16),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

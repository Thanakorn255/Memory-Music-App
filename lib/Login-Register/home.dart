import 'package:flutter/material.dart';

import 'login.dart';
import 'register.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Image.asset(
                    'assets/images/Logo_home_page.png',
                    width: 130,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: SizedBox(
                    child: (Text('Welcome to', style: TextStyle(fontSize: 18))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: SizedBox(
                    child: (Text('Memory Music App',
                        style: TextStyle(fontSize: 30))),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Login_page();
                        }));
                      },
                      icon: Icon(Icons.login),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.pink.shade500),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)))),
                      label: Text(
                        'Login',
                        style: TextStyle(fontSize: 15),
                      )),
                ),
                Container(
                  width: 200,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Register_page();
                          },
                        ));
                      },
                      icon: Icon(Icons.add),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.pink.shade200),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          )),
                      label: Text(
                        'Register',
                        style: TextStyle(fontSize: 15),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

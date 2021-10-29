import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

class Index_page extends StatefulWidget {
  const Index_page({Key? key}) : super(key: key);

  @override
  _Index_pageState createState() => _Index_pageState();
}

class _Index_pageState extends State<Index_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 270, 20),
              child: Text(
                'Hi',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home_page();
                }));
              },
              icon: Icon(Icons.login),
              label: Text(
                'Singout',
                style: TextStyle(fontSize: 18),
              )),
        ],
      ),
    );
  }
}

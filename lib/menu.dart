import 'package:flutter/material.dart';

import 'Login-Register/home.dart';

class Menu_page extends StatelessWidget {
  const Menu_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.red[300],
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://scontent.fbkk22-1.fna.fbcdn.net/v/t1.6435-9/126948231_2867283410221689_7511539865341906578_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHdWh2s3beKi3VJE_hV9nciE_vDciz9-xMT-8NyLP37EzAD0UAO7GYwn0i3tU7VqPDOXUGoZKTwQaC06P4bGx7q&_nc_ohc=AE0ZcvzOtUgAX_uH-1F&tn=5DccOfSCULP5Dng7&_nc_ht=scontent.fbkk22-1.fna&oh=4f39396e184df52dc04af362244619af&oe=61A2584C'),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    'Thanakorn Wihokkun',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      '63010255@kmitl.ac.th',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Text(
                    'Computer Engineering : KMITL',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return Home_page();
                },
              ));
            },
          )
        ],
      ),
    );
  }
}

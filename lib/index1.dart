import 'package:flutter/material.dart';
import 'package:my_app/Components/list_title.dart';
import 'package:my_app/Login-Register/home.dart';
import 'package:my_app/menu.dart';

class Index_page extends StatefulWidget {
  const Index_page({Key? key}) : super(key: key);

  @override
  _Index_pageState createState() => _Index_pageState();
}

class _Index_pageState extends State<Index_page> {
  List MusicList = [
    {
      'name': "เชือกวิเศษ",
      'singer': "LABANOON",
      'img':
          'https://upload.wikimedia.org/wikipedia/th/a/a3/%E0%B8%A8%E0%B8%B6%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B8%99%E0%B8%B2%E0%B8%A3%E0%B8%B5-LABANOON_Single.jpg',
      'detail': 'ยอดวิว 418,928,480 ครั้ง'
    },
    {
      'name': 'คู่คอง',
      'singer': 'ก้อง ห้วยไร่',
      'img': 'https://img.pptvhd36.com/thumbor/2021/08/27/cdc827aea6.jpg',
      'detail': 'ยอดวิว 359,786,695 ครั้ง'
    },
    {
      'name': 'ผู้สาวขาเลาะ',
      'singer': 'ลำไย ไหทองคำ',
      'img': 'https://www.newtv.co.th/images/content/ct_20190510034107892.jpg',
      'detail': 'ยอดวิว 326,599,039 ครั้ง'
    },
    {
      'name': 'แพ้ทาง',
      'singer': 'LABANOON',
      'img':
          'https://upload.wikimedia.org/wikipedia/th/a/a3/%E0%B8%A8%E0%B8%B6%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B8%99%E0%B8%B2%E0%B8%A3%E0%B8%B5-LABANOON_Single.jpg',
      'detail': 'ยอดวิว 318,708,067 ครั้ง'
    },
    {
      'name': 'ขอเวลาลืม',
      'singer': 'Aun Feeble heart',
      'img': 'https://media.teroradio.com/pix/single/25492.jpg',
      'detail': 'ยอดวิว 295,892,363 ครั้ง'
    },
    {
      'name': 'ไกลแค่ไหน คือ ใกล้',
      'singer': 'getsunova',
      'img':
          'https://storage.thaipost.net/main/uploads/photos/big/20200409/image_big_5e8ec6b01eaac.jpg',
      'detail': 'ยอดวิว 255,026,238 ครั้ง'
    },
    {
      'name': 'คนมีเสน่ห์',
      'singer': 'ป้าง นครินทร์',
      'img': 'https://www.matichon.co.th/wp-content/uploads/2016/10/01.jpg',
      'detail': 'ยอดวิว 248,567,087 ครั้ง'
    },
    {
      'name': 'คนทางนั้น',
      'singer': 'GiFT My Project',
      'img':
          'https://1.bp.blogspot.com/-TskuUn760UU/VrQkAbuqR_I/AAAAAAAAAK8/QGOXy_Anffc/s1600/1.jpg',
      'detail': 'ยอดวิว 245,622,116 ครั้ง'
    },
    {
      'name': 'เสร็จแล้ว',
      'singer': 'วง L.ก.ฮ.',
      'img':
          'https://s.isanook.com/sr/0/rp/rc/w0h0/ya0xacm1w0/aHR0cDovL2pvb3gtY21zLWltYWdlLTEyNTEzMTYxNjEuZmlsZS5teXFjbG91ZC5jb20vMjAyMS8wOS8yOC81OGNjNmZiYi00MDJiLTQ4OGEtOGMyYi02Y2NkYjkzY2MxYzkuanBnLzEwMDA=.jpg',
      'detail': 'ยอดวิว 242,086,174 ครั้ง',
    },
    {
      'name': 'ทิ้งไว้กลางทาง',
      'singer': 'POTATO',
      'img': 'https://mpics.mgronline.com/pics/Images/564000004652701.JPEG',
      'detail': 'ยอดวิว 220,874,193 ครั้ง'
    },
  ];
  String currentName = '';
  String currentSinger = '';
  String currentImg = '';
  String currentDetail = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: Text(
            'My Memmory Music',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      drawer: Menu_page(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Row(
                children: [
                  Text(
                    'Thai Music',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: MusicList.length,
                  itemBuilder: (context, index) => Custom(
                      onTap: () {
                        setState(() {
                          currentName = MusicList[index]['name'];
                          currentSinger = MusicList[index]['singer'];
                          currentImg = MusicList[index]['img'];
                          currentDetail = MusicList[index]['detail'];
                        });
                      },
                      name: MusicList[index]['name'],
                      singer: MusicList[index]['singer'],
                      img: MusicList[index]['img'],
                      detail: MusicList[index]['detail']))),
        ],
      ),
    );
  }
}

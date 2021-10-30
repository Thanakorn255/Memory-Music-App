import 'package:flutter/material.dart';

Widget Custom({required String name, singer, img, detail, onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(image: NetworkImage(img))),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                singer,
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                detail,
                style: TextStyle(color: Colors.yellow, fontSize: 14.0),
              )
            ],
          )
        ],
      ),
    ),
  );
}

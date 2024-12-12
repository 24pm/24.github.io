import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume/src/widget/content_widget.dart';
import 'package:resume/src/widget/profile_widget.dart';

class WebHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff552b80).withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(3, 3), // changes position of shadow
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xffff00c3),
            Color(0xffd123ba),
            Color(0xffa42dab),
            Color(0xff7b2f97),
            Color(0xff552b80),
            Color(0xff342465),
            Color(0xff181a48),
            Color(0xff050b2b),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
        color: Colors.orange,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10)
        )
        ),
        child: Row(
          children: [
            ProfileWidget(),
            Flexible(
              child: Container(
                alignment: Alignment.center,  
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/bg.png'))
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: ContentWidget()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
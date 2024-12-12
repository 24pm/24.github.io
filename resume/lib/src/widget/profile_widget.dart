import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({ super.key });

  @override
  State<ProfileWidget> createState() => _ProfileWidget();
}
class _ProfileWidget extends State<ProfileWidget> {
  bool isExpand = true;
  @override
  Widget build(BuildContext context) {
    return Container(
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
        width: isExpand==true ? 200 : 50,
        alignment: Alignment.topCenter,
        child: isExpand? Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isExpand ==true ? isExpand=false : isExpand=true;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 16,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: Icon(
                    Icons.close, 
                    size: 16,
                    color: Color(0xff342465),)
                ),
              )
            ),
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(60))
              ),
              alignment: Alignment.center,
              child: Icon(Icons.person,size: 100, color: Color.fromARGB(249, 225, 225, 225),),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              alignment: Alignment.centerLeft,
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 207, 207, 207),
                    Color.fromARGB(255, 232, 232, 232),
                    Color.fromARGB(255, 255, 255, 255),
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.mirror,
                ).createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: Text('Rama \nKusumadigara',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontFamily: 'character',
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 207, 207, 207),
                    ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12,bottom: 12),
              child: Divider(height: 1,color: Colors.white,indent: 10,endIndent: 10,)
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Born : 06 Oktober 1990",
                  style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10),
                Text("Email : 24.00.pm@gmail.com",
                  style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10),
                Text("Phone : +62 877 753 173 56",
                  style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ],)
            ),

          ],
        ) : Container(
          padding: EdgeInsets.all(10),
          child: Column( 
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpand ==true ? isExpand=false : isExpand=true;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Icon(Icons.person,color: Color.fromARGB(249, 225, 225, 225),),
                  ),
                ),
            ],
          ),
        ),
      );
  }
}

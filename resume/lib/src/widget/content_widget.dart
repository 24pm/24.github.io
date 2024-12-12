import 'package:flutter/material.dart';
import 'package:resume/src/widget/career_widget.dart';
import 'package:resume/src/widget/profile_content_widget.dart';

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(100, 0, 0, 0),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        width: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              flexibleSpace: SafeArea(
                child: const TabBar(
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.white,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                      child: Text('Profile',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'character',
                            fontSize: 14.0,
                            color: Color.fromARGB(255, 207, 207, 207),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                      child: Text('Career',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'character',
                            fontSize: 14.0,
                            color: Color.fromARGB(255, 207, 207, 207),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                      child: Text('Others',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'character',
                            fontSize: 14.0,
                            color: Color.fromARGB(255, 207, 207, 207),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: TabBarView(
              children: [
                ProfileContentWidget(),
                CareerWidget(),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ),
    );
  }
}
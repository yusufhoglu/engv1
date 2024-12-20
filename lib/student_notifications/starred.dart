import 'package:flutter/material.dart';
import 'package:engv1/student/notification_list.dart';

class StarredNotificationsPage extends StatefulWidget {
  const StarredNotificationsPage({super.key});

  @override
  State<StarredNotificationsPage> createState() => _StarredNotificationsPage();
}

class _StarredNotificationsPage extends State<StarredNotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            SizedBox(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0,MediaQuery.sizeOf(context).height*0.02,0,0),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,

                        child: const Center(
                          child:NotificationList(source: 1,filter1: 'isStarred',value1: true,filter2: 'isStarred',value2: true,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



}


import 'package:esports/screens/profile/hakk%C4%B1nda.dart';
import 'package:esports/service/add_status.dart';
import 'package:esports/service/status_list.dart';
import 'package:flutter/material.dart';
import 'package:esports/utils/constants.dart';
import 'package:esports/shared/broadcast_item.dart';
import 'package:esports/shared/rounded_label.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Stack(
        children: [

          Container(
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: 350,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.transparent,
                  kSecondaryColor,
                ],
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [

                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Icon(
                          Icons.dashboard,
                          color: Colors.white,
                        ),

                        RoundedLabel(
                          small: true,
                          color: Colors.grey[200],
                          text: "Abone ol",
                        ),
                        MaterialButton(

                          height: 50,
                          child: RoundedLabel( small: true,
                            color: Colors.grey[200],
                            text: "Hakında",),

                          onPressed: () { Navigator.push(context,MaterialPageRoute(builder:(context)=>hakkinda()));
                          },
                        ),
                        MaterialButton(

                          height: 50,
                          child: RoundedLabel( small: true,
                            color: Colors.grey[200],
                            text: "sec",),

                          onPressed: () { Navigator.push(context,MaterialPageRoute(builder:(context)=>StatusListPage()));
                          },
                        ),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 32,
                  ),

                  Center(
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/avatar_8.jpg"), 
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  Text(
                    "Aquiles20",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  Text(
                    "468.863 takipçi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        RoundedLabel(
                          small: false,
                          color: Colors.red,
                          text: "Canlı",
                        ),

                        SizedBox(
                          width: 12,
                        ),

                        RoundedLabel(
                          small: false,
                          color: Colors.grey[200],
                          text: "Önceki yayınlar",
                        ),

                      ],
                    ),
                  ),

                  BroadcastItem(
                    imageUrl: "assets/images/broadcast_1.jpg",
                    live: true,
                    title: " Ben Verdansk, beni discord ve twitch'ten de takip edin ",
                    users: "690",
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(
                        Icons.replay,
                        color: Colors.grey[600],
                      ),

                      SizedBox(
                        width: 8,
                      ),

                      Text(
                        "Önceki yayınlar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),

                  BroadcastItem(
                    imageUrl: "assets/images/broadcast_2.jpg",
                    live: false,
                    title: "Tek başına Warzone'da 90 öldürme",
                    users: "389",
                  ),

                  BroadcastItem(
                    imageUrl: "assets/images/broadcast_3.jpg",
                    live: false,
                    title: "İlk FIFA 20 turnuvam",
                    users: "596",
                  ),

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
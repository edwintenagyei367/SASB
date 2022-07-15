import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import './utils/clipper.dart';
import './screens/english_doctrine.dart';
import './screens/english_hymn_page.dart';
import './screens/aboutpage.dart';
import './screens/historypage.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  final List _listItem = [
    Icon(Icons.search),
    Icon(Icons.book),
  ];


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FadeInDown(
                duration: Duration(milliseconds: 800),
                delay: Duration(milliseconds: 800),
                child: Clipper()
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FadeInUp(
                  duration: Duration(milliseconds: 900),
                  delay: Duration(milliseconds: 1600),
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      GestureDetector(
                        child: Card(
                          color: Colors.blue,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 35,
                                  child: Image.asset('images/history.png'),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text("History",
                                  //style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                                  style: theme.textTheme.subtitle1
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HistoryPage()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Card(
                          color: Colors.red,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 35,
                                  child: Image.asset('images/doctrine.png'),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text("Doctrines",
                                  //style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                                  style: theme.textTheme.subtitle1
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EnglishDoc()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Card(
                          color: Colors.yellow,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 35,
                                  child: Image.asset('images/hymns.png'),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text("Hymns",
                                  //style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                                  style: theme.textTheme.subtitle1
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EnglishHymnPage()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Card(
                          color: Colors.green,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 35,
                                  child: Image.asset('images/info.png'),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text("About",
                                  //style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                                  style: theme.textTheme.subtitle1
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AboutPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ),
            FadeInUp(
              duration: Duration(milliseconds: 800),
              delay: Duration(milliseconds: 1600),
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text("Created by Tenagyei Edwin Kwadwo",
                      //style:TextStyle(fontWeight: FontWeight.bold),
                      style: theme.textTheme.subtitle1!.copyWith(
                        fontSize: 15
                      )
                    ),
                  )
              )
            )
          ],
        )
      ),

    );
  }
}



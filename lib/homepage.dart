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

  /*final List _listItem = [
    Icon(Icons.search),
    Icon(Icons.book),
  ];*/


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
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FadeInUp(
                  duration: Duration(milliseconds: 900),
                  delay: Duration(milliseconds: 1600),
                  child: GridView.count(
                    crossAxisCount: (MediaQuery.of(context).orientation == Orientation.landscape) ? 4 : 2,
                      //crossAxisSpacing: 20,
                      //mainAxisSpacing: 20,
                    children: [
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.all(40),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.black12)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 20,
                                child: Image.asset('images/history.png',
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("History",
                                style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.red),
                                //style: theme.textTheme.subtitle1
                              )
                            ],
                          )
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HistoryPage()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Container(
                            margin: EdgeInsets.all(40),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                border: Border.all(color: Colors.black12)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 20,
                                  child: Image.asset('images/doctrine.png',color: Colors.red,),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Affirmation",
                                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.red),
                                  //style: theme.textTheme.subtitle1
                                ),
                                Text("Of Faith",
                                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.red),
                                  //style: theme.textTheme.subtitle1
                                )
                              ],
                            )
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EnglishDoc()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Container(
                            margin: EdgeInsets.all(40),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                border: Border.all(color: Colors.black12)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 20,
                                  child: Image.asset('images/hymns.png',color: Colors.red),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Hymns ",
                                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.red),
                                  //style: theme.textTheme.subtitle1
                                )
                              ],
                            )
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EnglishHymnPage()),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Container(
                            margin: EdgeInsets.all(40),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                border: Border.all(color: Colors.black12)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 20,
                                  child: Image.asset('images/info.png',color: Colors.red),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("About",
                                  style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.red),
                                  //style: theme.textTheme.subtitle1
                                )
                              ],
                            )
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
          ],
        )
      ),

    );
  }
}



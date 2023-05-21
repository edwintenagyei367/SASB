import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:salvation_army_hymn/components/categories_widget.dart';
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
                      CategoryWidget('images/history.png', 'History', HistoryPage()),
                      CategoryWidget('images/doctrine.png', 'Doctrine', EnglishDoc()),
                      CategoryWidget('images/hymns.png', 'Hymns', EnglishHymnPage()),
                      CategoryWidget('images/info.png', 'About', AboutPage()),
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



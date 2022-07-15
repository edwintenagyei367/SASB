import 'dart:convert';
import 'package:flutter/material.dart';
import 'detailpage.dart';
import 'settings.dart';

class EnglishHymnPage extends StatefulWidget {
  @override
  _EnglishPageState createState() => _EnglishPageState();
}

class _EnglishPageState extends State<EnglishHymnPage> {
  String searchQuery = "";
  final controller = TextEditingController();
  Icon searchIcon = Icon(Icons.search);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: TextField(
          controller: controller,
          onChanged: (query) {
            setState(() {
              searchQuery = query;
            });
          },
          style: theme.textTheme.subtitle1!.copyWith(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            suffixIcon: searchQuery.isEmpty
                ? Icon(
              Icons.search,
              color: Colors.white,
            )
                : IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.white,
              ),
              onPressed: () {
                controller.clear();
                setState(() {
                  searchQuery = "";
                });
              },
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              }),
        ],
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future:
            DefaultAssetBundle.of(context).loadString('assets/hymns.json'),
            builder: (context, snapshot) {
              var mydata = json.decode(snapshot.data.toString());

              return ListView.builder(
                itemCount: mydata == null ? 0 : mydata.length,
                itemBuilder: (BuildContext context, int index) {
                  return mydata[index]['title']
                      .toLowerCase()
                      .contains(searchQuery.toLowerCase())
                      ? Card(
                      child: ListTile(
                          /*leading: Icon(
                            Icons.book,
                            color: Colors.deepPurple[900],
                          ),*/
                         leading: CircleAvatar(
                           radius: 30,
                           backgroundColor: Colors.white,
                           child: Image.asset("images/icon.ico"),
                         ),
                          title: Text(
                            mydata[index]['title'],
                            style: theme.textTheme.subtitle1,
                          ),
                          subtitle: Text(mydata[index]['subtitle'],
                              style: theme.textTheme.subtitle1!.copyWith(
                                color: Colors.red,
                              )),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(mydata[index])),
                            );
                          }))
                      : new Container();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

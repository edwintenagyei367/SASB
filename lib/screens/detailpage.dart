import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'settings.dart';

class DetailPage extends StatefulWidget {
  final post;
  DetailPage(this.post);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Widget> Stanza1(ThemeData theme) {
    List<Widget> list = [];
    for (var i = 0; i < widget.post['stanza1'].length; i++) {
      list.add(Text(
        widget.post['stanza1'][i],
        style: theme.textTheme.subtitle1,
      ));
    }
    return list;
  }

  List<Widget> Stanza2(ThemeData theme) {
    List<Widget> list = [];
    for (var i = 0; i < widget.post['stanza2'].length; i++) {
      list.add(Text(
        widget.post['stanza2'][i],
        style: theme.textTheme.subtitle1,
      ));
    }
    return list;
  }

  List<Widget> Stanza3(ThemeData theme) {
    List<Widget> list = [];
    for (var i = 0; i < widget.post['stanza3'].length; i++) {
      list.add(Text(
        widget.post['stanza3'][i],
        style: theme.textTheme.subtitle1,
      ));
    }
    return list;
  }

  List<Widget> Stanza4(ThemeData theme) {
    List<Widget> list = [];
    for (var i = 0; i < widget.post['stanza4'].length; i++) {
      list.add(Text(
        widget.post['stanza4'][i],
        style: theme.textTheme.subtitle1,
      ));
    }
    return list;
  }

  List<Widget> Stanza5(ThemeData theme) {
    List<Widget> list = [];
    for (var i = 0; i < widget.post['stanza5'].length; i++) {
      list.add(Text(
        widget.post['stanza5'][i],
        style: theme.textTheme.subtitle1,
      ));
    }
    return list;
  }

  List<Widget> Stanza6(ThemeData theme) {
    List<Widget> list = [];
    for (var i = 0; i < widget.post['stanza6'].length; i++) {
      list.add(Text(widget.post['stanza6'][i], style: theme.textTheme.subtitle1));
    }
    return list;
  }

  List<Widget> Stanza7(ThemeData theme) {
    List<Widget> list = [];
    for (var i = 0; i < widget.post['stanza7'].length; i++) {
      list.add(Text(widget.post['stanza7'][i], style: theme.textTheme.subtitle1));
    }
    return list;
  }

  List<Widget> Chorus(ThemeData theme) {
    List<Widget> list = [];
    for (var i = 0; i < widget.post['chorus'].length; i++) {
      list.add(Text(
        widget.post['chorus'][i],
        style: theme.textTheme.subtitle1!.copyWith(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        )
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext content) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.post['title'],
            style: TextStyle(fontFamily: "Times New Romans", fontSize: 20),
          ),

          backgroundColor: Colors.deepPurple[900],
          //centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.settings),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                })
          ],

          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: Stanza1(theme),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Chorus",
                      //style: theme.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold, fontSize: 20.0),
                      style: theme.textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: Chorus(theme),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: Stanza2(theme),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: Stanza3(theme),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: Stanza4(theme),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: Stanza5(theme),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: Stanza6(theme),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: Stanza7(theme),
                ),
              ),
            ],
          ),
        ));
  }
}

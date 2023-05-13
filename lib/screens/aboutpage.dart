import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'settings.dart';


class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About",
          style: theme.textTheme.subtitle1!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        backgroundColor: Colors.deepPurple[900],
        centerTitle: true,
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
        padding: const EdgeInsets.all(18.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SASB is an app that contains all the official English hymns of the Salvation Army Church.",
                style: theme.textTheme.subtitle1
                ),
              Divider(
                color: Colors.black,
              ),
              RichText(
                text: TextSpan(
                    style:theme.textTheme.subtitle1,
                  children: <TextSpan>[
                    TextSpan(text: "Version: "),
                    TextSpan(text: "1.0.0",style: theme.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.black))
                  ]
                ),
              ),
              RichText(
                text: TextSpan(
                    style:theme.textTheme.subtitle1,
                    children: <TextSpan>[
                      TextSpan(text: "Developer: "),
                      TextSpan(text: "Tenagyei Edwin Kwadwo",style: theme.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.black))
                    ]
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Center(
                child: Text(
                    "Copyright \u00a9  2022",
                    style:theme.textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ],


          ),
      ),

    );
  }
}

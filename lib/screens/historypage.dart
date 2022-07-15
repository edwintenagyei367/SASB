import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'settings.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "History",
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
      body: SingleChildScrollView(
        child: FadeInDown(
          duration: Duration(milliseconds: 800),
          delay: Duration(milliseconds: 800),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RichText(
                  text: TextSpan(
                    style: theme.textTheme.subtitle1,
                    children: <TextSpan>[
                      TextSpan(text: "The Salvation Army began on the streets of East London in "),
                      TextSpan(text: "1865 ",style: theme.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.red)),
                      TextSpan(text: "when Methodists, William and Catherine Booth, abandoned the traditional concept of a church pulpit to take God’s word directly to the people. ")
                    ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12.0,bottom: 12.0),
                child: Text(
                    "The Booths preached and lived out a doctrine of practical Christianity — soup, soap and salvation — to encourage both social and spiritual transformation among society’s most vulnerable and marginalised people."
                        "Their work included setting up shelters for people who were homeless, a family tracing service, running soup kitchens, helping people living in the slums and setting up rescue homes for women fleeing domestic abuse and prostitution. The couple also oversaw the world’s first free labour exchange and campaigned to improve working conditions.",
                  style: theme.textTheme.subtitle1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12.0,bottom: 12.0),
                child: RichText(
                  text: TextSpan(
                    style: theme.textTheme.subtitle1,
                    children: <TextSpan>[
                      TextSpan(text: "The movement grew rapidly outside of London and became known as the "),
                      TextSpan(text: "Christian Mission ",style: theme.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.red)),
                      TextSpan(text: "with William Booth as its General-Superintendent.In "),
                      TextSpan(text: "1878 ",style: theme.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.red)),
                      TextSpan(text: "the name was changed to "),
                      TextSpan(text: "The Salvation Army ",style: theme.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.red)),
                      TextSpan(text: "and the organisation adopted a quasi-military structure with officers and members wearing a military-style uniform.The Salvation Army movement spread rapidly across the British Isles and within decades was established across the globe in countries such as America, Canada, Australia, France, Switzerland, India, South Africa, Iceland, and Germany."),
                    ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12.0,bottom: 12.0),
                child: RichText(
                  text: TextSpan(
                    style: theme.textTheme.subtitle1,
                    children: <TextSpan>[
                      TextSpan(text: "Today, The Salvation Army is a church and charity that is active in virtually every corner of the world and serves in more than "),
                      TextSpan(text: "130 countries ",style: theme.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold,color: Colors.red)),
                      TextSpan(text: "offering God’s hope and love to all those in need without discrimination."),
                    ]
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("FOUNDERS",
                style: theme.textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset("images/William_Booth.jpg",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Image.asset("images/Catherine-Booth.jpg",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'settings.dart';

class EnglishDoc extends StatelessWidget {
  List<String> doctrines=[
    '1. We believe that the Scriptures of the Old and New Testaments were given by inspiration of God, and that they only constitute the Divine rule of Christian faith and practice.',
    '2. We believe that there is only one God, who is infinitely perfect, the Creator, Preserver, and Governor of all things, and who is the only proper object of religious worship.',
    '3. We believe that there are three persons in the Godhead – the Father, the Son and the Holy Ghost, undivided in essence and co-equal in power and glory.',
    '4. We believe that in the person of Jesus Christ the Divine and human natures are united, so that He is truly and properly God and truly and properly man.',
    '5. We believe that our first parents were created in a state of innocency, but by their disobedience they lost their purity and happiness, and that in consequence of their fall all men have become sinners, totally depraved, and as such are justly exposed to the wrath of God.',
    '6. We believe that the Lord Jesus Christ has by His suffering and death made an atonement for the whole world so that whosoever will may be saved.',
    '7. We believe that repentance towards God, faith in our Lord Jesus Christ, and regeneration by the Holy Spirit, are necessary to salvation.',
    '8. We believe that we are justified by grace through faith in our Lord Jesus Christ and that he that believeth hath the witness in himself.',
    '9. We believe that continuance in a state of salvation depends upon continued obedient faith in Christ.',
    '10. We believe that it is the privilege of all believers to be wholly sanctified, and that their whole spirit and soul and body may be preserved blameless unto the coming of our Lord Jesus Christ.',
    '11. We believe in the immortality of the soul; in the resurrection of the body; in the general judgment at the end of the world; in the eternal happiness of the righteous; and in the endless punishment of the wicked.',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Doctrines",
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
          padding: EdgeInsets.only(top: 10,bottom: 10),
          child: ListView.separated(
              itemBuilder: (context,index){
                return ListTile(
                title: Text(doctrines[index],
                    style: theme.textTheme.subtitle1,
                  ),
                );
              },
              separatorBuilder: (context,index){
                return Divider();
              },
              itemCount: doctrines.length),
        ));
  }
}

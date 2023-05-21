import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  String path;
  String widgetName;
  Widget widget;

  CategoryWidget( this.path,this.widgetName,this.widget);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
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
                child: Image.asset(path,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(widgetName,
                style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.red),
                //style: theme.textTheme.subtitle1
              )
            ],
          )
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        );
      }
    );
  }
}

import 'package:flutter/material.dart';
import 'package:salvation_army_hymn/screens/settings.dart';

class Clipper extends StatefulWidget {
  const Clipper({Key? key}) : super(key: key);

  @override
  _ClipperState createState() => _ClipperState();
}

class _ClipperState extends State<Clipper> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: WaveClipper(),
          child: SizedBox(
            height: 150,
            width: 500,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xFF191970),
              child: GestureDetector(
                child: Icon(
                  Icons.settings,color: Colors.white,size: 30,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
              ),
            ),
          ),
        ),

      ],
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, size.height - 50);
    //first magnet
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    //Second magnet
    var secondControlPoint = Offset(size.width * 0.75, size.height - 100);
    var secondEndPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class SecondClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, size.height - 50);
    //first magnet
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    //Second magnet
    var secondControlPoint = Offset(size.width * 0.75, size.height - 100);
    var secondEndPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

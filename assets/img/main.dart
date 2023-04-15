import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project 1",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Project 1",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Selamat datang di kelas mobile 1",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("--IF21B--"),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.black,
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("data 1     "),
                Text("data 2     "),
                Text("data 3     ")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomPaint(
              size: Size(100, 100),
              painter: TrianglePainter(),
            ),
          ],
        )),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.red;
    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

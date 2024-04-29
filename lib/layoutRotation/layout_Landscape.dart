import 'package:flutter/material.dart';

class layoutLandscape extends StatelessWidget {
  const layoutLandscape({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: size.width * 0.6,
        height: size.height * 0.7,
        decoration: BoxDecoration(
          color: Color(0xFFF6F5F2),
          borderRadius: BorderRadius.circular(0),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 110,
              child: Image.asset("assets/images/new.jpg"),
            ),
            const Positioned(
              top: 15,
              right: 15,
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage("assets/images/Vector_sigit_suseno.jpg"),
              ),
            ),
            Positioned(
              bottom: 80,
              left: 25,
              child: Text(
                "Sigit Suseno",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0E46A3),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 25,
              child: Text(
                "Programmer",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0E46A3),
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              right: 25,
              child: Text(
                "+62 821 3224 9398",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0E46A3),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 25,
              child: Text(
                "mavero811@gmail.com",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0E46A3),
                ),
              ),
            ),
            Positioned(
              top: 220,
              child: Image.asset("assets/images/new.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}

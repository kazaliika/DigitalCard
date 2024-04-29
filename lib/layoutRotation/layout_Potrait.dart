import 'package:flutter/material.dart';

class layoutPotrait extends StatelessWidget {
  const layoutPotrait({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: size.width * 0.9,
        height: size.height * 0.5,
        decoration: BoxDecoration(
          color: Color(0xFFF6F5F2),
          borderRadius: BorderRadius.circular(0),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 260,
              child: Image.asset("assets/images/new.jpg"),
            ),
            const Positioned(
              top: 40,
              right: 120,
              child: CircleAvatar(
                radius: 60,
                backgroundImage:
                    AssetImage("assets/images/Vector_sigit_suseno.jpg"),
              ),
            ),
            Positioned(
              bottom: 220,
              left: 10,
              child: Text(
                "Nama     : Sigit Suseno",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0E46A3),
                ),
              ),
            ),
            Positioned(
              bottom: 180,
              left: 10,
              child: Text(
                "Jabatan : Programmer",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0E46A3),
                ),
              ),
            ),
            Positioned(
              bottom: 140,
              left: 10,
              child: Text(
                "No HP    : +62 821 3224 9398",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0E46A3),
                ),
              ),
            ),
            Positioned(
              bottom: 105,
              left: 10,
              child: Text(
                "email     : mavero811@gmail.com",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0E46A3),
                ),
              ),
            ),
            Positioned(
              top: 310,
              child: Image.asset("assets/images/new.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}

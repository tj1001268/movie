import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class IntroMovieScreen extends StatefulWidget {
  @override
  State<IntroMovieScreen> createState() => _IntroMovieScreenState();
}

class _IntroMovieScreenState extends State<IntroMovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                "https://cdn.pixabay.com/photo/2024/03/04/20/06/man-8613139_1280.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Align(
               alignment: Alignment.topLeft,
              child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                      'Movi',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      'e+', style: TextStyle(color: Colors.red, fontSize: 40)
                    ),
                      ],
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}

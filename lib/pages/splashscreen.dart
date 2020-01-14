import 'package:flutter/material.dart';

import 'file_manager.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 800), vsync: this, value: 0.1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((dynamic) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FileManager()));
    });
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ScaleTransition(
                scale: _animation,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/sea.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Text(
                "File Manager",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
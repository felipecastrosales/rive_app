import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 100,
        height: 100,
        child: FlareActor('assets/newgears.flr', animation: 'spin'),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((_) => 
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Home())));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Flutter + Flare',
              style: TextStyle(fontSize: 38),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 120,
              width: 120,
              child: FlareActor('assets/animheart.flr', animation: 'pulse'),
            ),
          ],
        ),
      ),
    );
  }
}
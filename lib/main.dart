import 'package:flick/Export.dart';
import 'package:flutter/material.dart';

GlobalKey _key = GlobalKey();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Flick';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: FlickController(
        _flickBox(), // Widget Child
        true, //UseCache
        _key, // GlobalKey
        sensitivity: 0.2,
        // you can also use another property i show you
      ),
    );
  }

  Widget _flickBox() {
    return Container(
      height: 175.0,
      width: 175.0,
      color: Colors.transparent,
      key: _key,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Color(0xFFC41A3B),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Center(
            child: Text(
              'Flick Box',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
              // textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

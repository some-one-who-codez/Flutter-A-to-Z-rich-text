import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RichText',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
              children: [
                TextSpan(
                  text: 'Hello. This tutorial was brought to you by ',
                ),
                TextSpan(
                  text: 'some.one.who.codez. ',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                  text: 'This ',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: 'widget is a TextSpan.',
                ),
                TextSpan(
                  text: 'It allows ',
                ),
                TextSpan(
                  text: 'YOU',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                TextSpan(
                  text: 'to use ',
                ),
                TextSpan(
                  text: 'multiple ',
                  style: TextStyle(
                    decorationStyle: TextDecorationStyle.dotted,
                    decoration: TextDecoration.underline,
                    fontStyle: FontStyle.italic,
                    fontSize: 40.0,
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: 'text styles in one go.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

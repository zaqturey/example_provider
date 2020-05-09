import 'package:example_provider/flavor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAppHomePage extends StatefulWidget {
  MyAppHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyAppHomePageState createState() => _MyAppHomePageState();
}

class _MyAppHomePageState extends State<MyAppHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final flavor = Provider.of<Flavor>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(flavor.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

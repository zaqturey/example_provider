import 'package:example_provider/flavor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAppHomePage extends StatelessWidget {
  MyAppHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    // Using 'Provider.of<T>' registers the current Widget as a listener for the provider of type <T>
    final flavor = Provider.of<Flavor>(context);
    // by default 'counter' value will be '0' as it has been passed as the initial value.
    final counter = Provider.of<ValueNotifier<int>>(context, listen: false);
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
            Consumer<ValueNotifier<int>>(
              builder: (context, counter, child) => Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.value++,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

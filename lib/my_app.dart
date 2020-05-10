import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_app_home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<ValueNotifier<int>>(
        // '0' will be passed as the initial value to the constructor
        create: (context) => ValueNotifier<int>(0),
        child: MyAppHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

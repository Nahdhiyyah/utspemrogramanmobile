import 'package:flutter/material.dart';
import 'routes.dart';
import 'screen.dart';

void main() {
  runApp(MaterialApp(
    home: NavigationDrawer(),
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: false,
  ));
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[100],
            title: Text("Home"),
          ),
          drawer: DrawerWidget(),
          body: Center(child: Text('Welcome..', style: TextStyle(color: Colors.black38, fontSize: 25, fontWeight: FontWeight.bold))),
        ));
  }
}

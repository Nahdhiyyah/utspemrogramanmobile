import 'package:flutter/material.dart';
import 'screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/inbox':
        return MaterialPageRoute(builder: (_) => Inbox());
      case '/outbox':
        return MaterialPageRoute(builder: (_) => Outbox());
      case '/spam':
        return MaterialPageRoute(builder: (_) => Spam());
      case '/forum':
        return MaterialPageRoute(builder: (_) => Forums());
      case '/promos':
        return MaterialPageRoute(builder: (_) => Promos());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
          backgroundColor: Colors.black,
        ),
        body: Center(child: Text('Error page')),
      );
    });
  }
}

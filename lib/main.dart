// ignore_for_file: prefer_const_constructors
// @dart=2.9

import 'package:aviro_health_app/providers/globals.dart';
import 'package:aviro_health_app/screens/home.dart';
import 'package:aviro_health_app/screens/splashScreen.dart';
import 'package:aviro_health_app/utils/connection_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/serviceLocator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<Globals>.value(value: Globals()),
    ],
    child: AppStart(),
  ));
}

// to ensure we have the themeProvider before the app starts lets make a few more changes.
// ignore: use_key_in_widget_constructors
class AppStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatefulWidget with WidgetsBindingObserver {
  const MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityStatus>(
      initialData: ConnectivityStatus.offline,
      create: (context) =>
          ConnectivityService().connectionStatusController.stream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aviro Health App',
        // theme: widget.themeProvider.themeData(),
        home: Home(),
      ),
    );
  }
}

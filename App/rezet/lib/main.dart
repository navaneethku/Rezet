import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rezet/pages/home.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rezet/pages/intro_screen.dart';
import 'package:rezet/pages/loginpage.dart';

import 'model/Model.dart';
import 'pages/homepage.dart';

//late Box box;
void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroScreen()
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/help.dart';
import 'package:myapp/list_display.dart';
import 'package:myapp/login.dart';
//
import 'package:myapp/myprofile.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/listdisplay',
      routes: {
        '/listdisplay': (context) =>  TodoListDisplay(),
        '/login': (context) => const Login(),
        //'/loadingscreen': (context) => const LoadingScreen(),

        '/help': (context) => const Help(),
        '/myprofile': (context) => const Profile(),
      },
    ));

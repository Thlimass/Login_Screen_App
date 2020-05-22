import 'package:flutter/material.dart';
import 'package:loginscreen/services/firebase_auth.dart';

class HomePage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Home Page')
          ],
         ),
        ),
      );
    }



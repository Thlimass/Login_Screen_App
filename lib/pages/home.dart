import 'package:flutter/material.dart';
import 'package:loginscreen/services/firebase_auth.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.power_settings_new),
            onPressed: () {
              AuthProvider().logOut();
            },
          ),
        ],
      ),
     );
    }
  }





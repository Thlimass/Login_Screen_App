import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen/services/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, //Largura da coluna (L. pagina)
            mainAxisAlignment: MainAxisAlignment.center, //Centralizar
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(color: Colors.white),
                  hintText: "Digite seu email",
                    hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(color: Colors.white, fontSize: 20),

              ),
              Divider(),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: "Digite sua senha",
                    hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
                autofocus: true,
                obscureText: true, //esconder a senha
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 20),

              ),
              Divider(),
              ButtonTheme(
                height: 60.0 ,
                buttonColor: Colors.white,         //  <-- light color
                textTheme: ButtonTextTheme.primary, //  <-- dark text for light background
                child: RaisedButton(
                  onPressed: ()async {
                    if(_emailController.text.isEmpty ||
                        _passwordController.text.isEmpty) {
                      print("E-mail e senha não podem estar vazios");
                      return;
                  }
                    bool res = await AuthProvider().signInWithEmail(_emailController.text, _passwordController.text);
                    if(!res) {
                      print('Falha no login!');
                    }
                  },
                  child: Text(
                  "Entrar",
                style: TextStyle(color: Colors.deepPurple),
              ),
              ),
             ),
            Divider(),
        ButtonTheme(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Colors.blueAccent[700],
                child: Icon(FontAwesomeIcons.google,color: Color(0xFFFFFFFF),),
              onPressed: () async {
                bool res = await AuthProvider().loginWithGoogle();
                if(!res)
                  print("error logging in with google");
              },
              ),
             ],
              ),
             )
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen/pages/register_user.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                obscureText: true, //esconder a senha
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0 ,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterUser()))
                  }, //função p/ executar botão
                  child: Text(
                  "Entrar",
                style: TextStyle(color: Colors.deepPurple),
              ),
                color: Colors.white, //Cor do botão
              ),
             )
            ],
          ),
        ),
      ),

    );
  }
}

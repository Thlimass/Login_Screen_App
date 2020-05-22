import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

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
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, //Largura da coluna (L. pagina)
            mainAxisAlignment: MainAxisAlignment.center, //Centralizar
            children: <Widget>[
              TextFormField(
                validator: (input) {
                  if(input.isEmpty){
                    return 'Porfavor digite seu e-mail!';
                  }
                },
                onSaved: (input) => _email = input,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),
              TextFormField(
                validator: (input) {
                  if(input.length < 8){
                    return 'Sua senha deve ter pelo menos 8 caracteres!';
                  }
                },
                onSaved: (input) => _email = input,
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
                  onPressed: () => {},
                  //função p/ executar botão
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



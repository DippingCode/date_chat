import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';


import './intro.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,

      appBar: AppBar(
        brightness: Brightness.dark,
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                padding: EdgeInsets.fromLTRB(0, 32, 0, 56),
                child: FloatingActionButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(FeatherIcons.chevronLeft),
                  onPressed: () => Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (_) => IntroScreen(),
                      ),
                    ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Qual é o seu e-mail?',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  maxLength: 50,
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyText1,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 48),
                child: Text(
                  'Nós precisamos dele apenas para verificar a sua conta e nada mais. Seu e-mail nunca aparecerá no seu perfil.',
                  style: Theme.of(context).textTheme.caption,
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    onPressed: () => {},
                    child: Text(
                      'Continuar',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

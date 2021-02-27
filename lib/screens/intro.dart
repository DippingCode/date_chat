import 'package:flutter/material.dart';

import './login.dart';

class IntroScreen extends StatelessWidget {
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
              Padding(
                padding: EdgeInsets.fromLTRB(0, 80, 0, 64),
                child: Text(
                  'DateChat',
                    style: Theme.of(context).textTheme.headline4,
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 64),
                child: Text(
                  'Conheça  pessoas e encontre-se com elas...',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    child: Text(
                      'Usar o meu e-mail',
                      style: Theme.of(context).textTheme.button,
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LoginScreen(),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.caption,
                    children: [
                      TextSpan(
                        text: 'Quando você se registra, aceita nossas ',
                      ),
                      TextSpan(
                        text: 'Condições gerais de utilização',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ', a nossa ',
                      ),
                      TextSpan(
                        text: 'Política de privacidade ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'e a nossa ',
                      ),
                      TextSpan(
                        text: 'Carta de cookies.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  
                ),
              ),


              Padding(
                padding: EdgeInsets.all(0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    child: Text( 'Recuperar a minha conta'),
                    onPressed: () => {},
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

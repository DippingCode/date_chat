import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import './profile.dart';

class ProfileFormScreen extends StatefulWidget {
  final String form;

  ProfileFormScreen(this.form);

  @override
  _ProfileFormScreenState createState() => _ProfileFormScreenState();
}

class _ProfileFormScreenState extends State<ProfileFormScreen> {
  String _form;

  Map<String, String> _state = {
    'Gênero': '',
    'Idade': 'Continuar',
    'Altura': 'Continuar',
    'Profissão': 'Continuar',
    'Conhecer': '',
    'Cigarro': '',
    'Bebidas': '',
    'Esporte': '',
    'E-mail': 'Continuar',
  };

  @override
  void initState() {
    super.initState();

    if (widget.form != null) {
      _form = widget.form;
    }
  }

  _appBar() => AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
      );

  Widget build(BuildContext context) {
    _title(String title) => Container(
          margin: EdgeInsets.symmetric(vertical: 56),
          child: Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 36,
              color: Theme.of(context).backgroundColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
              height: 1.5,
            ),
          ),
        );

    _button(String form, String text) => SizedBox(
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
            onPressed: () => setState(() {
              _state[form] = text;
            }),
            color: _state[form] == text ? null : Color(0x30C4C4C4),
            elevation: _state[form] == text ? null : 0,
            child: Text(
              text,
              style: _state[form] == text
                  ? Theme.of(context).textTheme.button
                  : GoogleFonts.roboto(
                      fontSize: 16,
                      color: Theme.of(context).backgroundColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0,
                    ),
            ),
          ),
        );

    _input({
      TextInputType inputType = TextInputType.text,
      bool correct = true,
      String label,
    }) => Container(
          child: TextFormField(
            keyboardType: inputType,
            autocorrect: correct,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyText1,
            decoration: InputDecoration(
              fillColor: Color(0x30c4c4c4),
              labelText: label,
              labelStyle: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        );

    Map<String, Widget> _forms = {
      'Gênero': Container(
        child: Column(
          children: [
            _title('Qual é o seu gênero?'),
            _button('Gênero', 'Homem'),
            SizedBox(height: 32),
            _button('Gênero', 'Mulher'),
            SizedBox(height: 32),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Informe seu gênero para que outros usuários possam encontrar você baseado nos parâmetros escolhidos.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              ),
            )
          ],
        ),
      ),
      'Idade': Container(
        child: Column(
          children: [
            _title('Quantos anos você tem?'),

            _input(
              inputType: TextInputType.number,
              label: 'Informe sua idade',
            ),
            SizedBox(height: 32),
            _button('Idade', 'Continuar'),
            SizedBox(height: 32),
          ],
        ),
      ),
      'Altura': Container(
        child: Column(
          children: [
            _title('Qual a sua altura?'),

            _input(
              inputType: TextInputType.number,
              label: 'Informe sua altura',
            ),
            SizedBox(height: 32),
            _button('Altura', 'Continuar'),
            SizedBox(height: 32),
          ],
        ),
      ),
      'Profissão': Container(
        child: Column(
          children: [
            _title('Qual a sua profissão?'),

            _input(
              label: 'Informe sua profissão',
            ),
            SizedBox(height: 32),
            _button('Profissão', 'Continuar'),
            SizedBox(height: 32),
          ],
        ),
      ),
      'Conhecer': Container(
        child: Column(
          children: [
            _title('Você gostaria de conhecer...'),
            _button('Conhecer', 'Homem'),
            SizedBox(height: 32),
            _button('Conhecer', 'Mulher'),
            SizedBox(height: 32),
          ],
        ),
      ),
      'Cigarro': Container(
        child: Column(
          children: [
            _title('Em relação ao cigarro, você...'),
            _button('Cigarro', 'Fumante'),
            SizedBox(height: 32),
            _button('Cigarro', 'Não Fumante'),
            SizedBox(height: 32),
          ],
        ),
      ),
      'Bebidas': Container(
        child: Column(
          children: [
            _title('Em relação a bebidas alcóolicas, você...'),
            _button('Bebidas', 'Não bebo'),
            SizedBox(height: 32),
            _button('Bebidas', 'Bebo moderadamente'),
            SizedBox(height: 32),
             _button('Bebidas', 'Todo fim de semana'),
            SizedBox(height: 32),
          ],
        ),
      ),
      'Esporte': Container(
        child: Column(
          children: [
            _title('Em relação a esportes, você...'),
            _button('Esportes', 'Não prático'),
            SizedBox(height: 32),
            _button('Esportes', 'Praticante'),
            SizedBox(height: 32),
             _button('Esportes', 'Todo fim de semana'),
            SizedBox(height: 32),
          ],
        ),
      ),
      'E-mail': Container(
        child: Column(
          children: [
            _title('Informe o seu e-mail?'),

            _input(
              inputType: TextInputType.emailAddress,
              label: 'Informe seu e-mail',
            ),
            SizedBox(height: 32),
            _button('E-mail', 'Continuar'),
            SizedBox(height: 32),
          ],
        ),
      ),
    };

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      extendBodyBehindAppBar: false,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 44,
                  child: FloatingActionButton(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(FeatherIcons.chevronLeft),
                    onPressed: () => Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfileScreen(),
                      ),
                    ),
                  ),
                ),
              ),
              Form(child: _forms[_form]),
            ],
          ),
        ),
      ),
    );
  }
}

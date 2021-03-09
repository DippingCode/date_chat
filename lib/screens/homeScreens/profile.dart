import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../intro.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _item({
      String title,
      FontWeight weight = FontWeight.w400,
      String subtitle,
      Function onTap,
    }) => ListTile(
          title: Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 16,
              color: Theme.of(context).backgroundColor,
              letterSpacing: 0,
              fontWeight: weight,
            ),
          ),
          subtitle: subtitle != null
          ? Text(
            subtitle,
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: Colors.grey[400],
              letterSpacing: 0,
              fontWeight: FontWeight.w400,
            ),
          )
          : null,
          trailing: subtitle != null
          ? Icon(FeatherIcons.chevronRight)
          : null,
          onTap: onTap,
        );

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          snap: false,
          floating: false,
          automaticallyImplyLeading: false,
          expandedHeight: MediaQuery.of(context).size.height * 65 / 100,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            titlePadding: EdgeInsets.zero,
            title: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(8, 4, 16, 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 3,
                      width: 30,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 2,
                        onPressed: null,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jonatas Henrique',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                //quantidade de contatos
                                '25',
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Text(
                                //quantidade de contatos
                                'Contatos',
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            background: Image.asset(
              'profile.jpg',
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 16),
              child: FloatingActionButton.extended(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () => {},
                icon: Icon(FeatherIcons.camera, size: 16),
                label: Text(
                  'Editar',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            ListTile.divideTiles(
                context: context,
                color: Colors.grey[300],
                tiles: [
                  _item(
                    title: 'Gênero',
                    subtitle: 'Masculino',
                    onTap: () => {}
                  ),
                  _item(
                    title: 'Idade',
                    subtitle: '25',
                    onTap: () => {}
                  ),
                  _item(
                    title: 'Altura',
                    subtitle: '1.73',
                    onTap: () => {}
                  ),
                  _item(
                    title: 'Profissão',
                    subtitle: 'software architect',
                    onTap: () => {}
                  ),
                  _item(
                    title: 'Interesses Pessoais',
                    weight: FontWeight.w600,
                  ),
                  _item(
                    title: 'Quero conhecer',
                    subtitle: 'Mulheres',
                    onTap: () => {},
                  ),
                  _item(
                    title: 'Em relação ao cigarro',
                    subtitle: 'Não fumante',
                    onTap: () => {},
                  ),
                  _item(
                    title: 'Bebidas alcóolicas',
                    subtitle: 'Não informado',
                    onTap: () => {},
                  ),
                  _item(
                    title: 'Esporte',
                    subtitle: 'Não informado',
                    onTap: () => {},
                  ),
                  _item(
                    title: 'Dados da Conta',
                    weight: FontWeight.w600,
                  ),
                  _item(
                    title: 'E-mail',
                    subtitle: 'pessoa@email.com',
                    onTap: () => {},
                  ),

                  Container(
                    color: Colors.grey[400],
                    height: 40,
                  ),

                  Container(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => IntroScreen(),
                        ),
                      ),
                      elevation: 0,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Center(
                        child: Text(
                          'Sair',
                          style: GoogleFonts.roboto(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.grey[400],
                    height: 128,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'DateChat',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            'DateChat 0.1',
                            style: Theme.of(context).textTheme.overline,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => IntroScreen(),
                        ),
                      ),
                      elevation: 0,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Center(
                        child: Text(
                          'Desativar a minha conta',
                          style: GoogleFonts.roboto(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.grey[400],
                    height: 40,
                  ),

                ]).toList(),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import './chat.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _handlerScreen( String userName) => Navigator.push(
      context,
      MaterialPageRoute(
        builder:  (_) => ChatScreen(userName),
      ),
    );

    _contact({
      String user,
      String thumb,
    }) =>
        Card(
          margin: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: InkWell(
            onTap: () => _handlerScreen(user),
            child: Container(
              width: 84,
              height: 114,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(thumb),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      user,
                      style: Theme.of(context).textTheme.overline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );

    _carousel() => Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 16),
          height: 146,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _contact(user: 'Rebeca', thumb: 'foto01.jpeg'),
              _contact(user: 'Júlia', thumb: 'foto02.jpeg'),
              _contact(user: 'Beatiz', thumb: 'foto03.jpeg'),
              _contact(user: 'Rosa', thumb: 'foto04.jpeg'),
              _contact(user: 'Ana', thumb: 'foto05.jpeg'),
              _contact(user: 'Maria', thumb: 'foto06.jpeg'),
              _contact(user: 'Gisele', thumb: 'foto07.jpeg'),
              _contact(user: 'Fátima', thumb: 'foto08.jpeg'),
              _contact(user: 'Mônica', thumb: 'foto09.jpeg'),
              _contact(user: 'Juliana', thumb: 'foto10.jpeg'),
            ],
          ),
        );

    _message({
      String thumb,
      String user,
      String age,
      String lastMessage,
      String date,
      IconData icon,
      bool isLast = false,
    }) =>
        Dismissible(
          key: ValueKey(user),
          background: Container(),
          secondaryBackground: Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Remover Conversa',
                  style: Theme.of(context).textTheme.overline,
                ),
                SizedBox(width: 5),
                Icon(
                  FeatherIcons.trash,
                  color: Color(0xFFf6f6f6),
                ),
              ],
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: isLast
                  ? null
                  : Border(
                      bottom: BorderSide(
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
            ),
            child: ListTile(
              onTap: () => _handlerScreen(user),
              leading: CircleAvatar(
                backgroundImage: AssetImage(thumb),
              ),
              title: Container(
                child: Row(
                  children: [
                    Text(
                      '$user, $age',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Theme.of(context).backgroundColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      date,
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              subtitle: Container(
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.grey,
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text(
                      lastMessage,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: Icon(
                FeatherIcons.chevronRight,
                color: Colors.grey,
              ),
            ),
          ),
        );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.only(top: 116, left: 16),
            child: Text(
              'CONTATOS A ESPERA',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          _carousel(),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(
              'MENSAGENS RECENTES',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          _message(
            thumb: 'foto01.jpeg',
            user: 'Rebeca',
            age: '32',
            lastMessage: 'Olá tudo bem com você?',
            date: '23 de Fev. de 2021',
            icon: FeatherIcons.arrowUpLeft,
          ),
          _message(
            thumb: 'foto02.jpeg',
            user: 'Júlia',
            age: '24',
            lastMessage: 'Olá tudo bem com você?',
            date: '23 de Fev. de 2021',
            icon: FeatherIcons.arrowDownRight,
          ),
          _message(
            thumb: 'foto03.jpeg',
            user: 'Beatriz',
            age: '32',
            lastMessage: 'Olá tudo bem com você?',
            date: '23 de Fev. de 2021',
            icon: FeatherIcons.arrowUpLeft,
          ),
          _message(
            thumb: 'foto04.jpeg',
            user: 'Rosa',
            age: '32',
            lastMessage: 'Olá tudo bem com você?',
            date: '23 de Fev. de 2021',
            icon: FeatherIcons.arrowUpLeft,
          ),
          _message(
            thumb: 'foto05.jpeg',
            user: 'Ana',
            age: '32',
            lastMessage: 'Olá tudo bem com você?',
            date: '23 de Fev. de 2021',
            icon: FeatherIcons.arrowUpLeft,
          ),
          _message(
            thumb: 'foto06.jpeg',
            user: 'Tereza',
            age: '32',
            lastMessage: 'Olá tudo bem com você?',
            date: '23 de Fev. de 2021',
            icon: FeatherIcons.arrowUpLeft,
          ),
          _message(
            thumb: 'foto07.jpeg',
            user: 'Mônica',
            age: '32',
            lastMessage: 'Olá tudo bem com você?',
            date: '23 de Fev. de 2021',
            icon: FeatherIcons.arrowUpLeft,
          ),
          _message(
            thumb: 'foto08.jpeg',
            user: 'Juliana',
            age: '32',
            lastMessage: 'Olá tudo bem com você?',
            date: '23 de Fev. de 2021',
            icon: FeatherIcons.arrowUpLeft,
          ),
          _message(
            thumb: 'foto09.jpeg',
            user: 'Izabel',
            age: '32',
            lastMessage: 'Olá tudo bem com você?',
            date: '23 de Fev. de 2021',
            icon: FeatherIcons.arrowUpLeft,
            isLast: true,
          ),
        ],
      ),
    );
  }
}

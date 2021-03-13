import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  final String userName;

  ChatScreen(this.userName);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String _title;
  bool _message;

  @override
  void initState() {
    super.initState();

    if (widget.userName != null) {
      _title = widget.userName;
    }

    _message = false;
  }

  _appBar() => AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        brightness: Brightness.light,
        title: Text(
          _title,
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          FlatButton(
            child: Text(
              'Remover',
              style: GoogleFonts.roboto(
                fontSize: 14,
                letterSpacing: 0,
                color: Theme.of(context).primaryColor,
              ),
            ),
            onPressed: () => {},
          ),
        ],
        shape: Border(
          bottom: BorderSide(color: Theme.of(context).dividerColor),
        ),
      );

  _chatBar() => Container(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
        height: 56,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(color: Theme.of(context).dividerColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .8,
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.left,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).backgroundColor,
                  letterSpacing: 0,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  labelText: _message ? '' : 'Escreva uma mensagem...',
                  labelStyle: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFc4c4c4),
                    letterSpacing: 0,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  enabled: true,
                ),
                onTap: () => setState(() {
                  _message = true;
                }),
              ),
            ),
            Container(
              child: IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(
                  FeatherIcons.send,
                  color: Color(0xFFc4c4c4),
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      );

  _contactProfile({
    String avatar = 'foto03.jpeg',
    String date = '28 de Janeiro de 2021',
  }) => Container(
    margin: EdgeInsets.only(bottom: 16),
    child: Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 5,
          child: Container(
            width: 128,
            height: 128,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(avatar),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),

        Text(
          'Iniciaram uma nova amizade em',
          style: GoogleFonts.roboto(
            fontSize: 14,
            color: Color(0xFF7B8286),
            letterSpacing: 0,
            height: 1.5,
          ),
        ),

        Text(
          date,
          style: GoogleFonts.roboto(
            fontSize: 14,
            color: Color(0xFF7B8286),
            letterSpacing: 0,
            height: 1.5,
          ),
        ),
      ],
    ),
  );

  _chatDate(String date) => Container(
    margin: EdgeInsets.fromLTRB(0, 24, 0, 16),
    child: Text(
          date,
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF7B8286),
            letterSpacing: 0,
            height: 1.5,
          ),
        ),
  );

  _chatBubble({
    @required String text,
    String avatar,
    bool isSender = true, //está enviando
    bool isSent =  true, //mensagem enviada
    bool isDelivered = true, //mensagem já foi entregue
    bool isSeen = true, //mensagem já foi visualizada
    bool tail = true,
    bool isMargin = false,
  }) => Container(
    margin: isMargin 
    ? EdgeInsets.only(top: 32)
    : null,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        avatar != null
        ? CircleAvatar(
          backgroundImage: AssetImage(avatar),
        )
        : Container(),

        isSender 
        ?  Expanded( child: SizedBox(width: 5))
        : Container(),

        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * .8,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child:  Container(
              decoration: BoxDecoration(
                color: isSender 
                ? Theme.of(context).primaryColor
                : Color(0xFFc4c4c4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(
                    tail
                    ? isSender ? 8 : 0
                    : 8,
                  ),
                  bottomRight: Radius.circular(
                    tail
                    ? isSender ? 0 : 8
                    : 8,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: isSent 
                    ? isSender 
                      ? EdgeInsets.fromLTRB(12, 6, 28, 6)
                      : EdgeInsets.fromLTRB(28, 6, 12, 6)
                    : EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    
                    child: Text(
                      text,
                      textAlign: isSender 
                      ? TextAlign.left
                      : TextAlign.right,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        letterSpacing: 0,
                        wordSpacing: 1,
                        color: isSender
                        ? Theme.of(context).scaffoldBackgroundColor
                        : Theme.of(context).backgroundColor,
                      ),
                    ),
                  ),

                  isSender
                  ? Positioned(
                    bottom: 4,
                    right: 6,
                    child: Icon(
                      isDelivered
                      ? Icons.done_all
                      : Icons.done,
                      size: 18,
                      color: isSeen
                      ? Theme.of(context).backgroundColor
                      : Theme.of(context).scaffoldBackgroundColor,
                    ),
                  )
                  : SizedBox(width: 1),

                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );


  _chatList() => ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          _contactProfile(),

          _chatDate('28 de Janeiro de 2021'),

          _chatBubble(
            text: 'Mensagem',
          ),
           _chatBubble(
            text: 'Mensagem 3',
            isDelivered: true,
            isSeen: false,
          ),
          _chatBubble(
            text: 'Mensagem 3',
            isDelivered: false,
            isSeen: false,
          ),


          _chatBubble(
            text: 'Mensagem 2',
            avatar: 'foto03.jpeg',
            isSender: false,
            isMargin: true,
          ),
          _chatBubble(
            text: 'Mensagem 4',
            avatar: 'foto03.jpeg',
            isSender: false,
          ),


           _chatDate('05 de Fevereiro de 2021'),

          _chatBubble(
            text: 'Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa',
            isDelivered: false,
            isSeen: false,
          ),

          _chatBubble(
            text: 'Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa',
            avatar: 'foto03.jpeg',
            isSender: false,
            isMargin: true,
          ),

          _chatBubble(
            text: 'Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa',
            isDelivered: false,
            isSeen: false,
            isMargin: true,
          ),

           _chatBubble(
            text: 'Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa',
            avatar: 'foto03.jpeg',
            isSender: false,
            isMargin: true,
          ),

          _chatBubble(
            text: 'Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa',
            isDelivered: false,
            isSeen: false,
            isMargin: true,
          ),
           _chatBubble(
            text: 'Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa',
            avatar: 'foto03.jpeg',
            isSender: false,
            isMargin: true,
          ),

          _chatBubble(
            text: 'Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa',
            isDelivered: false,
            isSeen: false,
            isMargin: true,
          ),
           _chatBubble(
            text: 'Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa',
            avatar: 'foto03.jpeg',
            isSender: false,
            isMargin: true,
          ),

          _chatBubble(
            text: 'Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa Mensagem longa',
            isDelivered: false,
            isSeen: false,
            isMargin: true,
          ),

          SizedBox(height: 24),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 156,
                child: _chatList(),
              ),
              _chatBar(),
            ],
          ),
        ),
      ),
    );
  }
}

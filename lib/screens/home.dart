import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import './homeScreens/explorer.dart';
import './homeScreens/contacts.dart';
import './homeScreens/profile.dart';

class HomeScreen extends StatefulWidget {
  final String screen;

  HomeScreen({this.screen});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, Widget> _screens = {
    'Explorar': ExplorerScreen(),
    'Contatos': ContactsScreen(),
    'Perfil': ProfileScreen(),
  };

  String _screen;

  @override
  void initState() {
    super.initState();

    if (widget.screen != null) {
      _screen = widget.screen;
    } else {
      handleScreen('Explorar');
    }
  }

  handleScreen(String screen) {
    setState(() {
      _screen = screen;
    });
  }

  _appBar() {
    if (_screen == 'Perfil') {
      return null;
    }

    return AppBar(
      backgroundColor: _screen != 'Contatos'
      ? Colors.transparent
      : Theme.of(context).scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      brightness: _screen != 'Explorar'
      ? Brightness.light
      : Brightness.dark,
      title: Text(_screen,
      style: _screen == 'Explorar'
      ? Theme.of(context).textTheme.headline5
      : Theme.of(context).textTheme.headline6,
      ),
      shape: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor, 
        ),
      ),
    );
  }

  _bottomNavigationBar() => BottomAppBar(
    color: Theme.of(context).backgroundColor,
    shape: CircularNotchedRectangle(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: Icon(FeatherIcons.map),
          color: _screen == 'Explorar'
          ? Theme.of(context).primaryColor
          : Theme.of(context).scaffoldBackgroundColor,
          onPressed: () => handleScreen('Explorar'),
        ),
        IconButton(
          icon: Icon(FeatherIcons.messageSquare),
          color: _screen == 'Contatos'
          ? Theme.of(context).primaryColor
          : Theme.of(context).scaffoldBackgroundColor,
          onPressed: () => handleScreen('Contatos'),
        ),
        IconButton(
          icon: Icon(FeatherIcons.user),
          color: _screen == 'Perfil'
          ? Theme.of(context).primaryColor
          : Theme.of(context).scaffoldBackgroundColor,
          onPressed: () => handleScreen('Perfil'),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _screen == 'Explorar'
      ? Theme.of(context).primaryColor
      : Theme.of(context).scaffoldBackgroundColor,
      extendBodyBehindAppBar: true,
      appBar: _appBar(),
      bottomNavigationBar: _bottomNavigationBar(),
      body: _screens[_screen],
    );
  }
}

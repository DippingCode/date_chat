import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import './intro.dart';

class ReadmeScreen extends StatefulWidget {
  final String title;
  final String content;

  ReadmeScreen({
    this.title,
    this.content,
  });

  @override
  _ReadmeScreenState createState() => _ReadmeScreenState();
}

class _ReadmeScreenState extends State<ReadmeScreen> {
  String _title;
  String _content;

  @override
  void initState() {
    super.initState();

    if (widget.title != null) {
      _title = widget.title;
    }

    if (widget.content != null) {
      _content = widget.content;
    }
  }

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
                    _title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 48),
                child: Text(
                  _content,
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

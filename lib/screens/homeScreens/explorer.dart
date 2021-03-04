import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ExplorerScreen extends StatelessWidget {
  item({
    BuildContext context,
    String thumb,
    String name,
    String age,
    String profession,
    String status,
  }) =>
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 80,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          image: DecorationImage(image: AssetImage(thumb), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Spacer(),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 0, 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$name, $age',
                        style: Theme.of(context).textTheme.button,
                      ),
                      SizedBox(height: 4),
                      Text(
                        profession,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 4),
                      Text(
                        status,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  MaterialButton(
                    onPressed: () => {},
                    color: Theme.of(context).primaryColor,
                    elevation: 2,
                    textColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Icon(
                      FeatherIcons.heart,
                      size: 24,
                    ),
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    final _cards = [
      item(
        context: context,
        thumb: 'foto01.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto02.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto03.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto04.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto05.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto06.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto07.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto08.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto09.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto10.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto11.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto12.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
      item(
        context: context,
        thumb: 'foto13.jpeg',
        name: 'Janaina',
        age: '35',
        profession: 'Advogada',
        status: 'Não Fumante',
      ),
    ];

    return Swiper(
      scrollDirection: Axis.vertical,
      //loop: false,
      itemCount: _cards.length,
      itemBuilder: (context, index) {
        return _cards[index];
      },
    );
  }
}

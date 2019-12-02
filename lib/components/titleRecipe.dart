import 'package:flutter/material.dart';

class TitleRecipe extends StatefulWidget {
  @override
  _TitleRecipeState createState() => _TitleRecipeState();
}

class _TitleRecipeState extends State<TitleRecipe> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius:
            new BorderRadius.only(bottomLeft: const Radius.circular(40.0)),
      ),
      height: 165,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 20,
              width: 200,
              child: Text(
                'Vote for',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'OpenSans-regular', fontSize: 16),
              ),
            ),
            Container(
              height: 30,
              width: 100,
              child: Text(
                'Chicken Delicious',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Merriweather-bold', fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
  // ···
}

import 'package:flutter/material.dart';
import 'package:recipe_swipe/components/widgetTime.dart';

class CardRecipe extends StatelessWidget {
  final recipe;
  CardRecipe({this.recipe});

  @override
  Widget build(BuildContext context) {
    final buttonUp = 'assets/arrow_up.png';
    final buttonDown = 'assets/arrow_down.png';

    return new GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(229, 229, 229, 1),
              height: 700,
              width: 340,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/chickenTest.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(recipe),
                  new Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0.0),
                              Colors.white.withOpacity(0.7),
                            ],
                            stops: [
                              0.55,
                              1.0
                            ])),
                  )
                ],
              ),
            ),
            Positioned(
                top: 480.0,
                right: 25.0,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      getButton(buttonUp),
                      getButton(buttonDown),
                    ],
                  ),
                )),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(context, 'detailRecipe');
        });
  }
}

Widget getButton(String url) {
  return Container(
    height: 80.0,
    width: 80.0,
    child: InkWell(
      onTap: () => print("Container pressed"), // handle your onTap here
      child: Container(height: 200, width: 200),
    ),
    decoration: new BoxDecoration(
      image: DecorationImage(
        image: new AssetImage(url),
        fit: BoxFit.fill,
      ),
      shape: BoxShape.circle,
    ),
  );
}

Widget titleContainer(String title) {
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
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(fontFamily: 'OpenSans-regular', fontSize: 16),
            ),
          ),
          Container(
            height: 30,
            width: 100,
            child: Text(
              'Chicken Delicious',
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(fontFamily: 'Merriweather-bold', fontSize: 24),
            ),
          )
        ],
      ),
    ),
  );
}

Widget widgetClock() {
  return Container(
    decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius:
          new BorderRadius.only(topRight: const Radius.circular(40.0)),
    ),
    height: 80,
    width: 180,
    child: Padding(
      padding: const EdgeInsets.only(top: 5.0, right: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              'Time remaining to vote',
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(fontFamily: 'OpenSans-regular', fontSize: 16),
            ),
          ),
          Container(height: 30, width: 100, child: Countdown())
        ],
      ),
    ),
  );
}

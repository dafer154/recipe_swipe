import 'package:flutter/material.dart';
import 'package:recipe_swipe/components/widgetTime.dart';

class CommentsRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final _screenSize = MediaQuery.of(context).size;
    final seeRecipe = 'assets/seeRecipe.png';
    final _buttonBack = 'assets/back.png';

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Container(
                  child: new GestureDetector(
                child: Card(
                    color: Color.fromRGBO(229, 229, 229, 1),
                    child: Container(
                        child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 240,
                                    width: 360,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/chickenTest.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  new Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        gradient: LinearGradient(
                                            begin: FractionalOffset.topCenter,
                                            end: FractionalOffset.bottomCenter,
                                            colors: [
                                              Colors.black.withOpacity(0.7),
                                              Colors.black.withOpacity(0.0),
                                            ],
                                            stops: [
                                              0,
                                              0.75
                                            ])),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 36, right: 15, left: 15),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Kung Pao Chicken',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Merriweather-bold',
                                        fontSize: 24),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[comment(), comment(), comment(), comment()],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[buttonBack(_buttonBack, context)],
                        ),
                        new Positioned(
                          right: 0.0,
                          top: 195.0,
                          child: Row(
                            children: <Widget>[
                              buttonSeeRecipe(seeRecipe, context),
                            ],
                          ),
                        ),
                        new Positioned(
                            child: widgetClock(), right: 0.0, bottom: 0.0),
                      ],
                    ))),
                onTap: () => print("Container pressed"),
              ))));
    });
  }

  Widget buttonBack(String url, context) {
    return Container(
      height: 40.0,
      width: 60.0,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        // handle your onTap here
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

  Widget buttonSeeRecipe(String url, context) {
    return Container(
      height: 70.0,
      width: 120.0,
      child: InkWell(
         onTap: () {
          Navigator.pop(context);
        }, // handle your onTap here
        child: Container(height: 200, width: 200),
      ),
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage(url),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget comment() {
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Albert Coopeer',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Merriweather-bold', fontSize: 15),
                    ),
                    Text(
                      'Not like it this recipe',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'OpenSans-regular', fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    imageComment("assets/recipe1.jpg"),
                    new Positioned(
                      left: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buttonStar(),
                          buttonStar(),
                          buttonStar(),
                          buttonStar(),
                          buttonStar(),
                        ],
                      ),
                    )
                  ], //Image
                ),
              )
            ],
          ),
        ),
        Divider(height: 20.0,)
      ],
    );
  }

  Widget buttonStar() {
    return Container(
      height: 15.0,
      width: 15.0,
      child: InkWell(
        onTap: () => print("Container pressed"), // handle your onTap here
      ),
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage('assets/Star.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget imageComment(url) {
    return Container(
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage(url),
          fit: BoxFit.fill,
        ),
        color: Colors.white,
        borderRadius:
            new BorderRadius.only(bottomLeft: const Radius.circular(40.0)),
      ),
      height: 80,
      width: 150,
    );
  }
}

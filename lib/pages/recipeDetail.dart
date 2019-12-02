import 'package:flutter/material.dart';
import 'package:recipe_swipe/components/widgetTime.dart';

class RecipeDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final _screenSize = MediaQuery.of(context).size;
    final buttonUp = 'assets/arrow_up.png';
    final buttonDown = 'assets/arrow_down.png';
    final _buttonBack = 'assets/back.png';
    final finishButton = 'assets/finish.png';

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
                                    children: <Widget>[
                                      Text(
                                        '1. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '2. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '3. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '4. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '5. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '6. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '7. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '8. Kung Pao Chicken',
                                        textAlign: TextAlign.right,
                                        // overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'OpenSans-regular',
                                            fontSize: 16),
                                      ),
                                      Center(
                                        child: Container(
                                          child: buttonTest(finishButton, context),
                                        ),
                                      )
                                    ],
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
                              getButton(buttonUp),
                              getButton(buttonDown),
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

  
Widget buttonTest(String url, context){
  return Container(
      height: 70.0,
      width: 125.0,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'commentsRecipe');
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
}


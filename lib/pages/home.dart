import 'package:flutter/material.dart';
import 'package:recipe_swipe/components/cardRecipe.dart';
import 'package:recipe_swipe/components/swipeCard.dart';
import 'package:recipe_swipe/components/titleRecipe.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade200,
        body: Stack(
          children: <Widget>[
            new Container(child: buildDataRecipes()),
            new Positioned(child: widgetClock(), right: 0.0, bottom: 0.0),
            new Positioned(child: TitleRecipe(), left: 0.0, top: 0.0),
          ],
        ));
  }

  Widget buildDataRecipes() {
    return StreamBuilder(
      stream: Firestore.instance.collection('recipe').snapshots(),
      builder: (BuildContext ctx, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          print('Hello ${snapshot.data.documents[1].data}');
        }
        return MyPageView(
            recordObject:
                snapshot.data.documents[1].data['description'].toString());
      },
    );
  }
}

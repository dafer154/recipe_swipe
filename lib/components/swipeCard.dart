import 'package:flutter/material.dart';
import 'package:recipe_swipe/components/cardRecipe.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyPageView extends StatefulWidget {
  final recordObject;
  
  const MyPageView({Key key, this.recordObject}): super(key: key);

  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(229, 229, 229, 1),
        child: new Center(
            child: SizedBox(
          child: Container(
            child: PageView(
              controller: _pageController,
              children: [
                Container(
                  color: Colors.white,
                  child: Center(child: CardRecipe(recipe: widget.recordObject[0])),
                ),
                Container(
                  color: Colors.white,
                  child: Center(child: CardRecipe(recipe: widget.recordObject[0])),
                ),
                Container(
                  color: Colors.white,
                  child: Center(child: CardRecipe(recipe: widget.recordObject[0])),
                ),
              ],
            ),
          ),
        )));
  }

  void sendRecipe() async {
      Firestore.instance.runTransaction((Transaction transaction) async {
        CollectionReference reference =
            Firestore.instance.collection('recipe');
        await reference
            .add({"description": 'woow', "dishTitle": 'David', "like": 0, "star": 0});
            print('Hello');
      });
  }
}


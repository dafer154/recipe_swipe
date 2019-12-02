// import 'package:flutter/material.dart';
// import 'package:recipe_swipe/components/cardRecipe.dart';

// class MyPageView extends StatefulWidget {
//   MyPageView({Key key}) : super(key: key);

//   _MyPageViewState createState() => _MyPageViewState();
// }

// class _MyPageViewState extends State<MyPageView> {
//   PageController _pageController;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: PageView(
//           controller: _pageController,
//           children: [
//             Container(
//               color: Colors.white,
//               child: Center(child: CardRecipe()),
//             ),
//             Container(
//               color: Colors.white,
//               child: Center(child: CardRecipe()),
//             ),
//             Container(
//               color: Colors.white,
//               child: Center(child: CardRecipe()),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// // import 'package:recipe_swipe/components/cardRecipe.dart';

// class MyPageView extends StatefulWidget {
//   MyPageView({Key key}) : super(key: key);

//   _MyPageViewState createState() => _MyPageViewState();
// }

// class _MyPageViewState extends State<MyPageView> {
//   PageController _pageController;

//   //image list
//   List<String> images = [
//     'assets/recipe1.jpg',
//     'assets/recipe2.jpg',
//     'assets/recipe3.jpg'
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: PageView.builder(
//           controller: _pageController,
//           itemCount: images.length,
//           itemBuilder: (context, position){
//             return imageSlider(position);
//           }),
//       ),
//     );
//   }

//   imageSlider(int index){
//     return AnimatedBuilder(
//       animation: _pageController,
//       builder: (context, widget){
//         if(_pageController.position.haveDimensions){
//         }
//         return Center(
//           child: SizedBox(
//             height: 700,
//             width: 600,
//             child: widget,
//           )
//         );
//       },
//       child: Container(
//         child: Image.asset(images[index], fit: BoxFit.cover)
//       )
//     );
//   }
// }

//TEST 3

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
                  // child: Center(child: CardRecipe()),
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


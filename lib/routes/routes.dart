import 'package:flutter/material.dart';
import 'package:recipe_swipe/components/comments.dart';
import 'package:recipe_swipe/pages/home.dart';
import 'package:recipe_swipe/pages/recipeDetail.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){
  
  return <String, WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'detailRecipe' : (BuildContext context) => RecipeDetail(),
        'commentsRecipe' : (BuildContext context) => CommentsRecipe(),
  };
}


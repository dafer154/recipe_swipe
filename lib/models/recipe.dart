class Recipe {
  String key;
  String description;
  String dishTitle;
  List<String> ingredient;
  String instruction;
  num like;
  String photo;
  num star;
  List<String> steps;

  Recipe({
    this.key,
    this.description,
    this.dishTitle,
    this.ingredient,
    this.instruction,
    this.like,
    this.photo,
    this.star,
    this.steps,
  });
}

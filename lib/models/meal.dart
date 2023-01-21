enum Complexity {
  simple,
  medium,
  difficult,
}

enum Cost {
  cheap,
  fair,
  expensive,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.ingredients,
    required this.steps,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return "Simples";
      case Complexity.medium:
        return "Mediano";
      case Complexity.difficult:
        return "Difícil";
      default:
        return "Não definido";
    }
  }

  String get costText {
    switch (cost) {
      case Cost.cheap:
        return "Barato";
      case Cost.fair:
        return "Justo";
      case Cost.expensive:
        return "Caro";
      default:
        return "Desconhecido";
    }
  }
}

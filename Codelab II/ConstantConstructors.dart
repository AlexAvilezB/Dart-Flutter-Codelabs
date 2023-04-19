class Recipe {
  final List<String> ingredients;
  final int calories;
  final double milligramsOfSodium;

  const Recipe(this.ingredients, this.calories, this.milligramsOfSodium);
}

void main() {
  // Crear una instancia de Recipe
  Recipe recipe = Recipe(['Tomatoes', 'Cheese', 'Basil'], 250, 400.5);

  // Imprimir los valores de la instancia
  print(recipe.ingredients); // salida: ['Tomatoes', 'Cheese', 'Basil']
  print(recipe.calories); // salida: 250
  print(recipe.milligramsOfSodium); // salida: 400.5
}

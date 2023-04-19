class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

  double get total => _prices.fold(0, (e, t) => e + t);

  set prices(List<double> value) {
    if (value.any((p) => p < 0)) {
      throw InvalidPriceException();
    }

    _prices = value;
  }
}

void main() {
  var cart = ShoppingCart();

  // Establecer precios
  cart.prices = [10.0, 20.0, 30.0];
  print('Total: ${cart.total}');

  // Intentar establecer un precio negativo
  try {
    cart.prices = [10.0, -20.0, 30.0];
    print('Total: ${cart.total}');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}

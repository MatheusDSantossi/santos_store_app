class MPricingCalculator {
  /// -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice * taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the given location from a tax rate database or API.
    // Return the appropriate tax rate.
    switch (location) {
      // Example
      case "usa":
        return 0.07;
      case "canada":
        return 0.08;
      case "australia":
        return 0.09;
      case "brazil":
        return 0.11;
      case "china":
        return 0.12;
      case "japan":
        return 0.13;
      case "mexico":
        return 0.14;
      case "russia":
        return 0.15;
      case "singapore":
        return 0.16;
      case "south_korea":
        return 0.17;
      case "uk":
        return 0.18;
      default:
        return 0.07;
    }
  }

  static double getShippingCost(String location) {
    // Lookup the shipping cost for the given location from a shipping cost database or API.
    // Calculate the shipping cost based on various factors like distance, weight, etc.
    return 5.00; // Example shipping cost of $5
  }

  /// -- Sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  //  return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}

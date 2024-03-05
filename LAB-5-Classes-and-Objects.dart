void main() {
  // Exercise 1 & 2 Demonstration
  Car myCar = Car(brand: 'Toyota', model: 'Corolla', year: 2020);
  myCar.displayInfo(); // Printing the properties of the Car
  myCar.vroomVroom(); // Demonstrate the added method

  // Exercise 3 Demonstration
  ElectricCar myElectricCar = ElectricCar(brand: 'Tesla', model: 'Model S', year: 2022, batteryLife: 24.0);
  myElectricCar.displayInfo(); // Printing the properties including battery life
}

class Car {
  String brand;
  String model;
  int year;

  Car({required this.brand, required this.model, required this.year});

  void displayInfo() {
    print('Brand: $brand, Model: $model, Year: $year');
  }

  void vroomVroom() {
    print('Vroom Vroom');
  }
}

class ElectricCar extends Car {
  double batteryLife; // Battery life in hours

  ElectricCar({required String brand, required String model, required int year, required this.batteryLife})
      : super(brand: brand, model: model, year: year);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Battery Life: $batteryLife hours');
  }
}

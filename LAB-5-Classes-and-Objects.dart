class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void displayInfo() {
    print('Brand: $brand, Model: $model, Year: $year');
  }

  void makeNoise() {
    print('Vroom Vroom');
  }
}

class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife)
      : super(brand, model, year);

  @override
  void displayInfo() {
    super.displayInfo(); 
    print('Battery Life: $batteryLife hours');
  }
}

void main() {
  var myCar = Car('Toyota', 'Corolla', 2020);
  myCar.displayInfo(); 
  myCar.makeNoise(); 

  var myElectricCar = ElectricCar('Tesla', 'Model S', 2019, 24);
  myElectricCar.displayInfo(); 
  myElectricCar.makeNoise(); 
}

//Day 4 challenge Interface ,mixin ,enum
//Author: https://github.com/thedevamina
//Electric Car Challenge Code
abstract class Vehicle {
  String name;

  Vehicle(this.name);

  void display(); 
}

abstract class Chargeable {
  void charge();
}

mixin CanBoost {
  void boost() {
    print("Boosting");
  }
}

enum VehicleStatus { running, parked, stopped }

class ElectricCar extends Vehicle with CanBoost implements Chargeable {
  VehicleStatus status;

  ElectricCar(String name, this.status) : super(name);

  @override
  void charge() {
    print("$name is charging ");
  }

  @override
  void display() {
    print("Car: $name");
    print("Status: ${status.name}");

 
    if (status == VehicleStatus.running) {
      print("Running ");
    } else if (status == VehicleStatus.parked) {
      print("Parked ");
    } else {
      print("Stopped ");
    }
  }
}


void main() {
  ElectricCar car1 = ElectricCar("Aulto", VehicleStatus.running);
  ElectricCar car2 = ElectricCar("Mehran", VehicleStatus.parked);

 print("car1 information");
  car1.display();
  car1.charge();
  car1.boost();

  print("Car2 information");


  car2.display();
  car2.charge();
  car2.boost();
}

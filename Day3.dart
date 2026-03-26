//Day3: OOP Practice (Classes, Inheritance, Abstraction)
//Author:https://github.com/thedevamina


class Game {
  String name;
  String genre;
  int price;
  bool isOnline;

  Game(this.name, this.genre, this.price, this.isOnline);

  void display() {
    print("Name: $name, Genre: $genre, Price: $price");
  }

  void checkType() {
    if (isOnline) {
      print("Multiplayer Game");
    } else {
      print("Single Player Game");
    }
  }
}


class CarBasic {
  String name;
  int price;
  String color;
  bool isAvailable;

  CarBasic(this.name, this.price, this.color, this.isAvailable);

  void display() {
    print(
        "Name: $name, Price: $price, Color: $color, Available: $isAvailable");
  }

  void checkAvailability() {
    if (isAvailable) {
      print("$name is Available");
    } else {
      print("$name is Sold Out");
    }
  }
}

class Vehicle {
  String name;
  int speed;

  Vehicle(this.name, this.speed);

  void display() {
    print("Vehicle: $name, Speed: $speed");
  }
}

class Bike extends Vehicle {
  bool hasGear;

  Bike(String name, int speed, this.hasGear) : super(name, speed);

  void checkGear() {
    if (hasGear) {
      print("Has Gear");
    } else {
      print("No Gear");
    }
  }
}

class ElectricBike extends Bike {
  int batteryLife;

  ElectricBike(String name, int speed, bool hasGear, this.batteryLife)
      : super(name, speed, hasGear);

  void showBattery() {
    print("Battery: $batteryLife hours");
  }
}

abstract class Shape {
  String color;

  Shape(this.color);

  void getColor() {
    print("Color: $color");
  }

  void getArea();
}

class Circle extends Shape {
  double radius;

  Circle(String color, this.radius) : super(color);

  @override
  void getArea() {
    double area = 3.14 * radius * radius;
    print("Area: $area");
  }
}


void main() {

  CarBasic c1 = CarBasic("BMW", 5000000, "Black", true);
  CarBasic c2 = CarBasic("Mercedes", 8000000, "White", false);
  CarBasic c3 = CarBasic("Lambo", 25000000, "Yellow", true);

  c1.display();
  c1.checkAvailability();

  c2.display();
  c2.checkAvailability();

  c3.display();
  c3.checkAvailability();



 
  Game g1 = Game("PUBG", "Action", 0, true);
  Game g2 = Game("GTA5", "Adventure", 3000, false);
  Game g3 = Game("FIFA", "Sports", 2000, true);

  g1.display();
  g1.checkType();

  g2.display();
  g2.checkType();

  g3.display();
  g3.checkType();

  print("\n");


  ElectricBike e1 = ElectricBike("Tesla Bike", 120, true, 5);

  e1.display();
  e1.checkGear();
  e1.showBattery();

  print("\n");


  Circle c = Circle("Blue", 5.0);

  c.getColor();
  c.getArea();
}

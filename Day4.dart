Day 4 : Interface,Mixin,Enum
  Author:https://github.com/thedevamina
//interface
abstract class Chargeable{
  void charge();
}
abstract class Playable{
  void play();
}
class PlayStation implements Chargeable,Playable{
  String gameName;
  PlayStation(this.gameName);
  @override
  void charge(){
    print("Playstation is charging");
  }
  @override
  void play(){
    print("Playing GTA5");
  }
}
abstract class Flyable{
  void flyable();
}
abstract class Swimmable{
  void swimmable();
}
class Duck implements Flyable,Swimmable{
 String name;
Duck(this.name);
@override
void flyable(){
print("$name can fly");
}
void swimmable(){

print("$name can swim");
}
}
//mixin
mixin CarDrive{
  void drive(){

    print("can drive");
  
  }}
  mixin Fly{
   void flying(){ 
    print("Flying");
  }
}

class Driver with CarDrive,Fly{
  String name;
  Driver(this.name);
}



mixin CanShoot{
  void shoot(){
    print("Shoooting");
  }
}
mixin CanRun{
  void run(){
    print("Running");
  }
}
class PUBGPlayer with CanShoot,CanRun,CarDrive{
String name;
PUBGPlayer(this.name);
}

//enum for car brands
enum CarBrand{
  BMW, Mercidies,aulto,mehran
}
//for game status
enum GameStatus{
  Playing,
  Pause,
   gameOver
}

//for food status
enum FoodStatus{
  ordered, 
  preparing,delivered,cancelled
}
//for player rank
enum PlayerRank{
  bronze, silver,gold,platinum,diamond

}
void main(){
   print("Here are interface:");
  Duck d1 = Duck("SMARK");
  d1.flyable();
  d1.swimmable();
  PlayStation p1 = PlayStation("GTA5");
  p1.charge();
 p1.play();

 //mixin
 print("Here are mixins:");
Driver d2= Driver("XYZ");
d2.drive();
d2.flying();

PUBGPlayer player = PUBGPlayer("Ali");
player.shoot();
player.drive();
player.run();


//enum 

print("here are enum:");

CarBrand myCar = CarBrand.aulto;
print(myCar.name);

GameStatus myStatus = GameStatus.Playing;
if(myStatus == GameStatus.Playing){
 print("Game is Running");

}else if(myStatus == GameStatus.Pause){
  print("Game is Paused");
}else{
  print("Game is Over");
}

FoodStatus fs = FoodStatus.ordered;
if(fs==FoodStatus.ordered){
  print("Food is Ordered");
}else if(fs == FoodStatus.delivered){
  print("Food is Delivered");
}else{
  print("Order is Cancelled");
}

PlayerRank pr = PlayerRank.bronze;
if(pr == PlayerRank.bronze){
  print("Bronze");
}else if(pr == PlayerRank.diamond){
  print("Diamond");
}else if(pr == PlayerRank.silver){
  print("Silver");
  }else if(pr == PlayerRank.gold){
  print("Gold");
  }

  else{
  print("Platinum");
}
}


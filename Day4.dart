
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
void main(){
  Duck d1 = Duck("SMARK");
  d1.flyable();
  d1.swimmable();
  PlayStation p1 = PlayStation("GTA5");
  p1.charge();
 p1.play();
}


// Mixins 
// a class with no constructor and whose behaviour can be shared with other classes
class Performer
{
  void perform() => print("PERFROMING");
}

mixin Guitarist on Performer
{
  void playguitar() => print("Playing guitar");
  void perform() => playguitar();
}

mixin Drummer on Performer
{
  void playdrummer() => print("Playing drums");
  void perform() => playdrummer();
}

class Musician extends Performer with Guitarist,Drummer{}

// class Singer with Guitarist, Drummer6 {}

void main(List<String> args) {
  Musician m = Musician();
  m.perform();
  m.playguitar();
}

// next is extension methods

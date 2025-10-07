
void main()
{
  var cat = Animal();
  print(cat.name);
  print(cat.age);

  var p = Person("Alice", 23);
  p.display();
}
class Animal 
{
  String? name = "kitty";
  int? age = 2;

}
class Person
{
  String? name;
  int? age;

  //constructor
  Person(this.name, this.age);
  void display()
  {
    print("person name is $name, person age is $age");
  }
}


